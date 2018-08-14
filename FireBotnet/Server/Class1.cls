VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Class1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Option Base 0

Private Const SOF0    As Long = &HC0&
Private Const SOF1    As Long = &HC1&
Private Const SOF2    As Long = &HC2&
Private Const SOF3    As Long = &HC3&
                                     
Private Const SOF5    As Long = &HC5&
Private Const SOF6    As Long = &HC6&
Private Const SOF7    As Long = &HC7&
                                      
Private Const JPG     As Long = &HC8&
Private Const SOF9    As Long = &HC9&
Private Const SOF10   As Long = &HCA&
Private Const SOF11   As Long = &HCB&
                                      
Private Const SOF13   As Long = &HCD&
Private Const SOF14   As Long = &HCE&
Private Const SOF15   As Long = &HCF&
                                      
Private Const DHT     As Long = &HC4&
Private Const DAC     As Long = &HCC&
Private Const RSTm    As Long = &HD0&
Private Const RSTm2   As Long = &HD7&
Private Const SOI     As Long = &HD8&
Private Const EOI     As Long = &HD9&
Private Const SOS     As Long = &HDA&
Private Const DQT     As Long = &HDB&
Private Const DNL     As Long = &HDC&
Private Const DRI     As Long = &HDD&
Private Const DHP     As Long = &HDE&
Private Const EXP     As Long = &HDF&
Private Const APP0    As Long = &HE0&
Private Const APPF    As Long = &HEF&
Private Const JPGn    As Long = &HF0&
Private Const JPGn2   As Long = &HFD&
Private Const COM     As Long = &HFE&
Private Const RESm    As Long = &H2&
Private Const RESm2   As Long = &HBF&
Private Const TEM     As Long = &H1&

Private QLumin(63)    As Integer
Private QChrom(63)    As Integer
Private FDCTScale(7)  As Double
Private IDCTScale(7)  As Double
Private ZigZag(7, 7)  As Long


Private Const BLACKONWHITE    As Long = 1
Private Const COLORONCOLOR    As Long = 3
Private Const HALFTONE        As Long = 4

Private Const BI_RGB          As Long = 0
Private Const DIB_RGB_COLORS  As Long = 0



Private Type SAFEARRAYBOUND
    cElements         As Long
    lLbound           As Long
End Type
Private Type SAFEARRAY2D
    cDims             As Integer
    fFeatures         As Integer
    cbElements        As Long
    cLocks            As Long
    pvData            As Long
    Bounds(0 To 1)    As SAFEARRAYBOUND
End Type
Private Type RGBQUAD
    rgbBlue           As Byte
    rgbGreen          As Byte
    rgbRed            As Byte
    rgbReserved       As Byte
End Type
Private Type BITMAPINFOHEADER
    biSize            As Long
    biWidth           As Long
    biHeight          As Long
    biPlanes          As Integer
    biBitCount        As Integer
    biCompression     As Long
    biSizeImage       As Long
    biXPelsPerMeter   As Long
    biYPelsPerMeter   As Long
    biClrUsed         As Long
    biClrImportant    As Long
End Type
Private Type BITMAPINFO
    bmiHeader         As BITMAPINFOHEADER
    bmiColors         As RGBQUAD
End Type

Private Declare Function GetObjectAPI Lib "gdi32" Alias "GetObjectA" (ByVal hObject As Long, ByVal nCount As Long, lpObject As Any) As Long
Private Declare Function GetDesktopWindow Lib "user32" () As Long
Private Declare Function GetDC Lib "user32" (ByVal hWnd As Long) As Long
Private Declare Function CreateCompatibleDC Lib "gdi32" (ByVal hDC As Long) As Long
Private Declare Function CreateDIBSection2 Lib "gdi32" Alias "CreateDIBSection" (ByVal hDC As Long, pBitmapInfo As BITMAPINFO, ByVal un As Long, lplpVoid As Long, ByVal handle As Long, ByVal dw As Long) As Long   'lplpVoid changed to ByRef
Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Private Declare Function SelectObject Lib "gdi32" (ByVal hDC As Long, ByVal hObject As Long) As Long
Private Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long
Private Declare Function DeleteDC Lib "gdi32" (ByVal hDC As Long) As Long
Private Declare Function VarPtrArray Lib "msvbvm60.dll" Alias "VarPtr" (Ptr() As Any) As Long
Private Declare Function SetStretchBltMode Lib "gdi32" (ByVal hDC As Long, ByVal nStretchMode As Long) As Long
Private Declare Function StretchBlt Lib "gdi32" (ByVal hDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal nSrcWidth As Long, ByVal nSrcHeight As Long, ByVal dwRop As Long) As Long
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (lpvDest As Any, lpvSource As Any, ByVal cbCopy As Long)

Private Type QUANTIZATIONTABLE
    Qk(63)            As Integer
    FScale(63)        As Single
    IScale(63)        As Single
End Type
Private Type HUFFMANTABLE
    BITS(15)          As Byte
    HUFFVAL(255)      As Byte
    EHUFSI(255)       As Long
    EHUFCO(255)       As Long
    MINCODE(15)       As Long
    MAXCODE(15)       As Long
End Type
Private Type COMPONENT
    Ci                As Long
    Hi                As Long
    Vi                As Long
    Tqi               As Long
    data()            As Integer
End Type

Private PP            As Long
Private YY            As Long
Private XX            As Long
Private Nf            As Long

Private HMax          As Long
Private VMax          As Long

Private m_Data()      As Byte
Private m_Chr         As Long
Private m_Ptr         As Long
Private m_Bit         As Long

Private m_Block(7, 7) As Single

Private QTable(3)     As QUANTIZATIONTABLE
Private HuffDC(3)     As HUFFMANTABLE
Private HuffAC(3)     As HUFFMANTABLE
Private Comp()        As COMPONENT

Private m_Quality     As Long
Private m_Comment     As String


Private Sub FDCT()
    Static t0   As Single
    Static t1   As Single
    Static t2   As Single
    Static t3   As Single
    Static t4   As Single
    Static t5   As Single
    Static t6   As Single
    Static t7   As Single
    Static t8   As Single
    Static i    As Long

    For i = 0 To 7
        t0 = m_Block(i, 0) + m_Block(i, 7)
        t1 = m_Block(i, 0) - m_Block(i, 7)
        t2 = m_Block(i, 1) + m_Block(i, 6)
        t3 = m_Block(i, 1) - m_Block(i, 6)
        t4 = m_Block(i, 2) + m_Block(i, 5)
        t5 = m_Block(i, 2) - m_Block(i, 5)
        t6 = m_Block(i, 3) + m_Block(i, 4)
        t7 = m_Block(i, 3) - m_Block(i, 4)

        t7 = t7 + t5
        t8 = t0 - t6
        t6 = t6 + t0
        t0 = t2 + t4
        t2 = (t2 - t4 + t8) * 0.707106781186548
        t4 = t1 + t3
        t3 = (t3 + t5) * 0.707106781186548
        t5 = (t4 - t7) * 0.382683432365091
        t7 = t7 * 0.541196100146196 - t5
        t4 = t4 * 1.30656296487638 - t5
        t5 = t1 + t3
        t1 = t1 - t3

        m_Block(i, 0) = t6 + t0
        m_Block(i, 4) = t6 - t0
        m_Block(i, 1) = t5 + t4
        m_Block(i, 7) = t5 - t4
        m_Block(i, 2) = t8 + t2
        m_Block(i, 6) = t8 - t2
        m_Block(i, 5) = t1 + t7
        m_Block(i, 3) = t1 - t7
    Next i

    For i = 0 To 7
        t0 = m_Block(0, i) + m_Block(7, i)
        t1 = m_Block(0, i) - m_Block(7, i)
        t2 = m_Block(1, i) + m_Block(6, i)
        t3 = m_Block(1, i) - m_Block(6, i)
        t4 = m_Block(2, i) + m_Block(5, i)
        t5 = m_Block(2, i) - m_Block(5, i)
        t6 = m_Block(3, i) + m_Block(4, i)
        t7 = m_Block(3, i) - m_Block(4, i)

        t7 = t7 + t5
        t8 = t0 - t6
        t6 = t6 + t0
        t0 = t2 + t4
        t2 = (t2 - t4 + t8) * 0.707106781186548
        t4 = t1 + t3
        t3 = (t3 + t5) * 0.707106781186548
        t5 = (t4 - t7) * 0.382683432365091
        t7 = t7 * 0.541196100146196 - t5
        t4 = t4 * 1.30656296487638 - t5
        t5 = t1 + t3
        t1 = t1 - t3

        m_Block(0, i) = t6 + t0
        m_Block(4, i) = t6 - t0
        m_Block(1, i) = t5 + t4
        m_Block(7, i) = t5 - t4
        m_Block(2, i) = t8 + t2
        m_Block(6, i) = t8 - t2
        m_Block(5, i) = t1 + t7
        m_Block(3, i) = t1 - t7
    Next i
End Sub





Private Sub OptimizeHuffman(TheHuff As HUFFMANTABLE, freq() As Long)

    Dim i              As Long
    Dim j              As Long
    Dim k              As Long
    Dim n              As Long
    Dim V1             As Long
    Dim V2             As Long
    Dim others(256)    As Long
    Dim codesize(256)  As Long
    Dim BITS(256)      As Long
    Dim swp            As Long
    Dim swp2           As Long


    For i = 0 To 256
        others(i) = -1
    Next i
    freq(256) = 1

   
    Do
        V1 = -1
        V2 = -1
        swp = 2147483647
        swp2 = 2147483647
        For i = 0 To 256
            If freq(i) <> 0 Then
                If (freq(i) <= swp2) Then
                    If (freq(i) <= swp) Then
                        swp2 = swp
                        V2 = V1
                        swp = freq(i)
                        V1 = i
                    Else
                        swp2 = freq(i)
                        V2 = i
                    End If
                End If
            End If
        Next i
        If V2 = -1 Then
            freq(V1) = 0
            Exit Do
        End If
        freq(V1) = freq(V1) + freq(V2)
        freq(V2) = 0
        codesize(V1) = codesize(V1) + 1
        While (others(V1) >= 0)
            V1 = others(V1)
            codesize(V1) = codesize(V1) + 1
        Wend
        others(V1) = V2
        codesize(V2) = codesize(V2) + 1
        While (others(V2) >= 0)
            V2 = others(V2)
            codesize(V2) = codesize(V2) + 1
        Wend
    Loop

 
    n = 0
    For i = 0 To 256
        If codesize(i) <> 0 Then
            BITS(codesize(i)) = BITS(codesize(i)) + 1
            If n < codesize(i) Then n = codesize(i)
        End If
    Next i

    i = n
    While i > 16
        While BITS(i) > 0
            For j = i - 2 To 1 Step -1
                If BITS(j) > 0 Then Exit For
            Next j
            BITS(i) = BITS(i) - 2
            BITS(i - 1) = BITS(i - 1) + 1
            BITS(j + 1) = BITS(j + 1) + 2
            BITS(j) = BITS(j) - 1
        Wend
        i = i - 1
    Wend
    BITS(i) = BITS(i) - 1

   
    With TheHuff
        For i = 1 To 16
            .BITS(i - 1) = BITS(i)
        Next i
        k = 0
        For i = 1 To n
            For j = 0 To 255
                If codesize(j) = i Then
                    .HUFFVAL(k) = j
                    k = k + 1
                End If
            Next j
        Next i
    End With

End Sub
Private Sub ExpandHuffman(TheHuff As HUFFMANTABLE, Optional MaxSymbol As Long = 255)

    Dim i          As Long
    Dim j          As Long
    Dim k          As Long
    Dim si         As Long
    Dim code       As Long
    Dim symbol     As Long


    With TheHuff

        For i = 0 To 255
           .EHUFSI(i) = 0
           .EHUFCO(i) = -1
        Next i

        j = 0
        si = 1
        code = 0
        For i = 0 To 15
            k = j + .BITS(i)
            If k > 256 Then Err.Raise 1, , "Bad Huffman Table"
            If j = k Then
               .MINCODE(i) = j - code
               .MAXCODE(i) = -1
            Else
               .MINCODE(i) = j - code
                While j < k
                    symbol = .HUFFVAL(j)
                    If symbol > MaxSymbol Then Err.Raise 1, , "Bad Huffman Table"
                    If .EHUFCO(symbol) >= 0 Then Err.Raise 1, , "Bad Huffman Table"
                   .EHUFSI(symbol) = si
                   .EHUFCO(symbol) = code
                    code = code + 1
                    j = j + 1
                Wend
               .MAXCODE(i) = code - 1
            End If
            si = si * 2
            If code >= si Then Err.Raise 1, , "Bad Huffman Table"
            code = code * 2
        Next i
        If j = 0 Then Err.Raise 1, , "Bad Huffman Table"
    End With

End Sub

Private Sub WriteBitsBegin()
    m_Chr = 0
    m_Bit = 128
End Sub
Private Sub WriteBitsEnd()
    If m_Bit <> 128 Then WriteBits m_Bit, -1
End Sub
Private Sub WriteBits(ByVal si As Long, code As Long)
    While si > 0
        If (code And si) <> 0 Then m_Chr = (m_Chr Or m_Bit)
        If m_Bit = 1 Then
            m_Data(m_Ptr) = m_Chr
            If m_Chr = 255 Then
                m_Data(m_Ptr + 1) = 0
                m_Ptr = m_Ptr + 2
            Else
                m_Ptr = m_Ptr + 1
            End If
            m_Chr = 0
            m_Bit = 128
        Else
            m_Bit = m_Bit \ 2
        End If
        si = si \ 2
    Wend
End Sub

Private Sub EncodeCoefficients(data() As Integer, p As Long, Pred As Long, Td As Long, Ta As Long)

    Dim r     As Long
    Dim rs    As Long
    Dim si    As Long
    Dim code  As Long
    Dim p2    As Long

    p2 = p + 64

    code = data(p) - Pred
    Pred = data(p)
    p = p + 1

    si = 1
    rs = 0
    If code < 0 Then
        Do While si <= -code
            si = si * 2
            rs = rs + 1
        Loop
        code = code - 1
    Else
        Do While si <= code
            si = si * 2
            rs = rs + 1
        Loop
    End If
    si = si \ 2
    WriteBits HuffDC(Td).EHUFSI(rs), HuffDC(Td).EHUFCO(rs)
    WriteBits si, code

    With HuffAC(Ta)
        r = 0
        Do
            If data(p) = 0 Then
                 r = r + 1
            Else
                While r > 15
                    WriteBits .EHUFSI(240), .EHUFCO(240)
                    r = r - 16
                Wend
                code = data(p)
                rs = r * 16
                si = 1
                If code < 0 Then
                    Do While si <= -code
                        si = si * 2
                        rs = rs + 1
                    Loop
                    code = code - 1
                Else
                    Do While si <= code
                        si = si * 2
                        rs = rs + 1
                    Loop
                End If
                si = si \ 2
                WriteBits .EHUFSI(rs), .EHUFCO(rs)
                WriteBits si, code
                r = 0
            End If
            p = p + 1
        Loop While p < p2
        If r <> 0 Then WriteBits .EHUFSI(0), .EHUFCO(0)
    End With

End Sub



Private Sub CollectStatisticsAC(data() As Integer, freqac() As Long)
    Dim code As Long
    Dim n    As Long
    Dim p    As Long
    Dim p2   As Long
    Dim r    As Long
    Dim rs   As Long


    n = UBound(data) + 1
    p = 0
    While p <> n
        p = p + 1
        p2 = p + 63

        r = 0
        While p <> p2
            If data(p) = 0 Then
                 r = r + 1
            Else
                While r > 15
                    freqac(240) = freqac(240) + 1
                    r = r - 16
                Wend
                code = data(p)
                If code < 0 Then
                    rs = Int((Log(-code) * 1.442695040889)) + 1
                ElseIf code > 0 Then
                    rs = Int((Log(code) * 1.442695040889)) + 1
                Else
                    rs = 0
                End If

                rs = (r * 16) Or rs
                freqac(rs) = freqac(rs) + 1
                r = 0
            End If
            p = p + 1
        Wend
        If r <> 0 Then freqac(0) = freqac(0) + 1
    Wend

End Sub
Private Sub CollectStatisticsDCNonInterleaved(data() As Integer, freqdc() As Long)
    Dim Diff  As Long
    Dim Pred  As Long
    Dim n     As Long
    Dim p     As Long
    Dim s     As Long


    n = UBound(data) + 1
    p = 0
    Pred = 0
    While p <> n
        Diff = data(p) - Pred
        Pred = data(p)

        If Diff < 0 Then
            s = Int((Log(-Diff) * 1.442695040889)) + 1
        ElseIf Diff > 0 Then
            s = Int((Log(Diff) * 1.442695040889)) + 1
        Else
            s = 0
        End If

        freqdc(s) = freqdc(s) + 1
        p = p + 64
    Wend

End Sub
Private Sub CollectStatisticsDCInterleaved(data() As Integer, freqdc() As Long, Hi As Long, Vi As Long)
    Dim p()       As Long
    Dim f         As Long
    Dim g         As Long
    Dim H         As Long
    Dim i         As Long
    Dim j         As Long
    Dim n         As Long
    Dim s         As Long
    Dim Diff      As Long
    Dim Pred      As Long
    Dim pLF       As Long
    Dim MCUr      As Long
    Dim MCUx      As Long
    Dim MCUy      As Long


    n = UBound(data) + 1
    ReDim p(Vi - 1)


    MCUx = (XX + 8 * HMax - 1) \ (8 * HMax)
    MCUy = (YY + 8 * VMax - 1) \ (8 * VMax)

    H = (-Int(-XX * Hi / HMax) + 7) \ 8

    For g = 0 To Vi - 1
        p(g) = 64 * H * g
    Next g
    pLF = 64 * H * (Vi - 1)

    MCUr = (H Mod Hi)
    If MCUr = 0 Then MCUr = Hi

    For j = 1 To MCUy - 1

        For i = 1 To MCUx - 1
        For g = 1 To Vi
        For H = 1 To Hi

        Diff = data(p(g - 1)) - Pred
        Pred = data(p(g - 1))
        p(g - 1) = p(g - 1) + 64
        If Diff < 0 Then
            s = Int((Log(-Diff) * 1.442695040889)) + 1
        ElseIf Diff > 0 Then
            s = Int((Log(Diff) * 1.442695040889)) + 1
        Else
            s = 0
        End If
        freqdc(s) = freqdc(s) + 1

        Next H
        Next g
        Next i

   
        For g = 1 To Vi
        For H = 1 To Hi
        If H > MCUr Then
            s = 0
        Else
            Diff = data(p(g - 1)) - Pred
            Pred = data(p(g - 1))
            p(g - 1) = p(g - 1) + 64

            If Diff < 0 Then
                s = Int((Log(-Diff) * 1.442695040889)) + 1
            ElseIf Diff > 0 Then
                s = Int((Log(Diff) * 1.442695040889)) + 1
            Else
                s = 0
            End If
        End If
        freqdc(s) = freqdc(s) + 1
        Next H
        Next g

       'Advance data pointers
        For g = 0 To Vi - 1
            p(g) = p(g) + pLF
        Next g
    Next j


   'Bottommost MCU Scanline
    For i = 1 To MCUx
    For g = 1 To Vi
    For H = 1 To Hi
    If p(g - 1) >= n Or (i = MCUx And H > MCUr) Then 'Pad with dummy block
        s = 0
    Else
        Diff = data(p(g - 1)) - Pred
        Pred = data(p(g - 1))
        p(g - 1) = p(g - 1) + 64

        If Diff < 0 Then
            s = Int((Log(-Diff) * 1.442695040889)) + 1
        ElseIf Diff > 0 Then
            s = Int((Log(Diff) * 1.442695040889)) + 1
        Else
            s = 0
        End If
    End If
    freqdc(s) = freqdc(s) + 1
    Next H
    Next g
    Next i

End Sub

Private Sub ExpandDQT(Tqi As Long)
    Dim i          As Long
    Dim j          As Long
    Dim k          As Byte
    Dim maxvalue   As Long

    With QTable(Tqi)
        If PP = 12 Then
            maxvalue = 65535
        Else
            maxvalue = 255
        End If

        For i = 0 To 7
            For j = 0 To 7
                k = ZigZag(i, j)
                If .Qk(k) < 1 Or .Qk(k) > maxvalue Then Err.Raise 1, , "Bad Quantization Table"
               .FScale(k) = FDCTScale(i) * FDCTScale(j) / CDbl(.Qk(k))
            Next j
        Next i
    End With

End Sub
Private Sub Quantize(data() As Integer, p As Long, FScale() As Single)
    Dim i As Long
    Dim j As Long
    Dim t As Long


    For j = 0 To 7
        For i = 0 To 7
            t = ZigZag(i, j)
            data(p + t) = m_Block(i, j) * FScale(t)
        Next i
    Next j
    p = p + 64

End Sub
Public Property Let Quality(vData As Long)


    Dim i           As Long
    Dim qvalue      As Long
    Dim maxvalue    As Long
    Dim scalefactor As Long

    maxvalue = 255

    If vData > 0 And vData <= 100 Then
        m_Quality = vData

        If (m_Quality < 50) Then
            If m_Quality <= 0 Then
                scalefactor = 5000
            Else
                scalefactor = 5000 / m_Quality
            End If
        Else
            If m_Quality > 100 Then
                scalefactor = 0
            Else
                scalefactor = 200 - m_Quality * 2
            End If
        End If

        With QTable(0)
            For i = 0 To 63
                qvalue = (QLumin(i) * scalefactor + 50) / 100
                If qvalue <= 0 Then
                    qvalue = 1
                ElseIf qvalue > maxvalue Then
                    qvalue = maxvalue
                End If
                .Qk(i) = qvalue
            Next i
        End With
        With QTable(1)
            For i = 0 To 63
                qvalue = (QChrom(i) * scalefactor + 50) / 100
                If qvalue <= 0 Then
                    qvalue = 1
                ElseIf qvalue > maxvalue Then
                    qvalue = maxvalue
                End If
                .Qk(i) = qvalue
            Next i
        End With

        ExpandDQT 0
        ExpandDQT 1
    End If

End Property
Public Property Get Quality() As Long
    Quality = m_Quality
End Property





Public Sub SetSamplingFrequencies(H1 As Long, V1 As Long, H2 As Long, V2 As Long, H3 As Long, V3 As Long)



    Dim i As Long

    If H1 < 1 Or H1 > 4 Then Err.Raise 1, , "Invalid Sampling Value"
    If V1 < 1 Or V1 > 4 Then Err.Raise 1, , "Invalid Sampling Value"

    If (H2 Or H3 Or V2 Or V3) = 0 Then
        Nf = 1
        ReDim Comp(0)
        Comp(0).Hi = 1
        Comp(0).Vi = 1
    Else
        If H2 < 1 Or H2 > 4 Then Err.Raise 1, , "Invalid Sampling Value"
        If H3 < 1 Or H3 > 4 Then Err.Raise 1, , "Invalid Sampling Value"
        If V2 < 1 Or V2 > 4 Then Err.Raise 1, , "Invalid Sampling Value"
        If V3 < 1 Or V3 > 4 Then Err.Raise 1, , "Invalid Sampling Value"
        Nf = 3
        ReDim Comp(2)
        Comp(0).Hi = H1
        Comp(0).Vi = V1
        Comp(0).Tqi = 0
        Comp(1).Hi = H2
        Comp(1).Vi = V2
        Comp(1).Tqi = 1
        Comp(2).Hi = H3
        Comp(2).Vi = V3
        Comp(2).Tqi = 1
    End If

    HMax = -1
    VMax = -1
    For i = 0 To Nf - 1
        If HMax < Comp(i).Hi Then HMax = Comp(i).Hi
        If VMax < Comp(i).Vi Then VMax = Comp(i).Vi
    Next i

End Sub

Public Function SampleHDC(ByVal lHDC As Long, lWidth As Long, lHeight As Long, Optional lSrcLeft As Long, Optional lSrcTop As Long) As Long

    Dim hDIb       As Long
    Dim hBmpOld    As Long
    Dim hDC        As Long
    Dim lPtr       As Long
    Dim BI         As BITMAPINFO
    Dim SA         As SAFEARRAY2D
    Dim Pixel()    As Byte
    Dim f          As Long
    Dim qp         As Long
    Dim rm         As Single
    Dim gm         As Single
    Dim bm         As Single
    Dim s          As Single
    Dim xi         As Long
    Dim yi         As Long
    Dim xi2        As Long
    Dim yi2        As Long
    Dim xi8        As Long
    Dim yi8        As Long
    Dim i0         As Long
    Dim j0         As Long
    Dim i          As Long
    Dim j          As Long
    Dim p          As Long
    Dim q          As Long


    PP = 8
    YY = lHeight
    XX = lWidth

    hDC = CreateCompatibleDC(0)
    If hDC = 0 Then
        SampleHDC = 1
    Else
        With BI.bmiHeader
            .biSize = Len(BI.bmiHeader)
            .biWidth = (lWidth + 7) And &HFFFFFFF8
            .biHeight = (lHeight + 7) And &HFFFFFFF8
            .biPlanes = 1
            .biBitCount = 24
            .biCompression = BI_RGB
            .biSizeImage = ((.biWidth * 3 + 3) And &HFFFFFFFC) * .biHeight
        End With
        hDIb = CreateDIBSection2(hDC, BI, DIB_RGB_COLORS, lPtr, 0, 0)
        If hDIb = 0 Then
            SampleHDC = 1
        Else
            With SA
                .cbElements = 1
                .cDims = 2
                .Bounds(0).lLbound = 0
                .Bounds(0).cElements = BI.bmiHeader.biHeight
                .Bounds(1).lLbound = 0
                .Bounds(1).cElements = ((BI.bmiHeader.biWidth * 3 + 3) And &HFFFFFFFC)
                .pvData = lPtr
            End With
            hBmpOld = SelectObject(hDC, hDIb)
            If SetStretchBltMode(hDC, HALFTONE) = 0 Then SetStretchBltMode hDC, COLORONCOLOR


    For f = 0 To Nf - 1
        Select Case f
        Case 0
            rm = 0.299
            gm = 0.587
            bm = 0.114
            s = -128
        Case 1
            rm = -0.16874
            gm = -0.33126
            bm = 0.5
            s = 0
        Case 2 'Chrominance [Red-Green]
            rm = 0.5
            gm = -0.41869
            bm = -0.08131
            s = 0
        End Select

        With Comp(f)
           .Ci = f + 1

            xi = -Int(-XX * .Hi / HMax)
            yi = -Int(-YY * .Vi / VMax)
            xi8 = ((xi + 7) And &HFFFFFFF8)
            yi8 = ((yi + 7) And &HFFFFFFF8)
            ReDim .data(xi8 * yi8 - 1)

            If xi8 <> xi2 Or yi8 <> yi2 Then
                If xi = XX And yi = YY Then
                    BitBlt hDC, 0, BI.bmiHeader.biHeight - yi8, xi, yi, lHDC, lSrcLeft, lSrcTop, vbSrcCopy
                Else
                    StretchBlt hDC, 0, BI.bmiHeader.biHeight - yi8, xi, yi, lHDC, lSrcLeft, lSrcTop, lWidth, lHeight, vbSrcCopy
                End If
                For i = xi To xi8 - 1
                    BitBlt hDC, i, BI.bmiHeader.biHeight - yi8, 1, yi, hDC, i - 1, BI.bmiHeader.biHeight - yi8, vbSrcCopy
                Next i
                For j = BI.bmiHeader.biHeight - (yi8 - yi) To BI.bmiHeader.biHeight - 1 'Pad bottom of Sample to 8 block barrier
                    BitBlt hDC, 0, j, xi8, 1, hDC, 0, j - 1, vbSrcCopy
                Next j
            End If
            xi2 = xi8
            yi2 = yi8
            qp = 0

            CopyMemory ByVal VarPtrArray(Pixel), VarPtr(SA), 4&
            j = yi8 - 1
            While j > 0
                i = 0
                j0 = j
                While i < 3 * xi8
                    j = j0
                    i0 = i
                    For p = 0 To 7
                        i = i0
                        For q = 0 To 7
                            m_Block(q, p) = rm * Pixel(i + 2, j) + _
                                            gm * Pixel(i + 1, j) + _
                                            bm * Pixel(i, j) + s
                            i = i + 3
                        Next q
                        j = j - 1
                    Next p
                    FDCT
                    Quantize .data, qp, QTable(.Tqi).FScale
                Wend
            Wend
            CopyMemory ByVal VarPtrArray(Pixel), 0&, 4
        End With
    Next f


            SelectObject hDC, hBmpOld
            DeleteObject hDIb
        End If
        DeleteObject hDC
    End If

End Function
Public Function SampleScreen() As Long
    Dim hDC As Long

    hDC = GetDC(GetDesktopWindow)
    If hDC = 0 Then
        SampleScreen = 1
    Else
        SampleScreen = SampleHDC(hDC, Screen.Width \ Screen.TwipsPerPixelX, Screen.Height \ Screen.TwipsPerPixelY)
        DeleteDC hDC
    End If

End Function

Private Sub InsertJFIF()
    If m_Ptr + 17 > UBound(m_Data) Then Err.Raise 9

    CopyMemory m_Data(m_Ptr + 0), &H1000E0FF, 4&
    CopyMemory m_Data(m_Ptr + 4), &H4649464A, 4&
    CopyMemory m_Data(m_Ptr + 8), &H10100, 4&
                                                   
    CopyMemory m_Data(m_Ptr + 12), &H1000100, 4&
                                                   
    CopyMemory m_Data(m_Ptr + 16), &H0&, 2&
    m_Ptr = m_Ptr + 18

End Sub
Private Sub InsertSOF(SOFMarker As Long)
    Dim i   As Long
    Dim Lx  As Long

    Lx = 8 + 3 * Nf
    m_Data(m_Ptr) = 255
    m_Data(m_Ptr + 1) = SOFMarker And 255
    m_Data(m_Ptr + 2) = Lx \ 256
    m_Data(m_Ptr + 3) = Lx And 255
    m_Data(m_Ptr + 4) = PP
    m_Data(m_Ptr + 5) = YY \ 256
    m_Data(m_Ptr + 6) = YY And 255
    m_Data(m_Ptr + 7) = XX \ 256
    m_Data(m_Ptr + 8) = XX And 255
    m_Data(m_Ptr + 9) = Nf
    m_Ptr = m_Ptr + 10
    For i = 0 To Nf - 1
        With Comp(i)
            m_Data(m_Ptr) = .Ci
            m_Data(m_Ptr + 1) = .Hi * 16 Or .Vi
            m_Data(m_Ptr + 2) = .Tqi
        End With
        m_Ptr = m_Ptr + 3
    Next i
End Sub
Private Sub InsertCOM(TheComment As String)
    Dim i As Long
    Dim Lx As Long

    Lx = Len(TheComment) + 2
    If Lx > 2 Then
        m_Data(m_Ptr) = 255
        m_Data(m_Ptr + 1) = COM
        m_Data(m_Ptr + 2) = Lx \ 256
        m_Data(m_Ptr + 3) = Lx And 255
        m_Ptr = m_Ptr + 4
        For i = 1 To Len(TheComment)
            m_Data(m_Ptr) = Asc(Mid$(TheComment, i, 1))
            m_Ptr = m_Ptr + 1
        Next i
    End If
End Sub
Private Sub InsertDQT(ByVal MarkerPos As Long, Tqi As Long)
    Dim i As Long


    If m_Ptr < MarkerPos + 4 Then
        m_Ptr = MarkerPos + 4
        m_Data(m_Ptr - 4) = 255
        m_Data(m_Ptr - 3) = DQT
    End If
    With QTable(Tqi)
        For i = 0 To 63
            If .Qk(i) > 255 Then Exit For
        Next i
        If i = 64 Then
            m_Data(m_Ptr) = Tqi
            m_Ptr = m_Ptr + 1
            For i = 0 To 63
                m_Data(m_Ptr) = .Qk(i)
                m_Ptr = m_Ptr + 1
            Next i
        Else
            If PP <> 12 Then Err.Raise 1, , "Illegal precission in Quantization Table"
            m_Data(m_Ptr) = Tqi Or 16
            m_Ptr = m_Ptr + 1
            For i = 0 To 63
                m_Data(m_Ptr) = .Qk(i) \ 256
                m_Data(m_Ptr + 1) = .Qk(i) And 255
                m_Ptr = m_Ptr + 2
            Next i
        End If
    End With

    m_Data(MarkerPos + 2) = (m_Ptr - MarkerPos - 2) \ 256&
    m_Data(MarkerPos + 3) = (m_Ptr - MarkerPos - 2) And 255&
End Sub
Private Sub InsertDHT(ByVal MarkerPos As Long, HIndex As Long, IsAC As Boolean)
    Dim i As Long
    Dim j As Long

    If m_Ptr < MarkerPos + 4 Then
        m_Ptr = MarkerPos + 4
        m_Data(m_Ptr - 4) = 255
        m_Data(m_Ptr - 3) = DHT
    End If
    If IsAC Then
        With HuffAC(HIndex)
            m_Data(m_Ptr) = HIndex Or 16
            m_Ptr = m_Ptr + 1
            j = 0
            For i = 0 To 15
                m_Data(m_Ptr) = .BITS(i)
                m_Ptr = m_Ptr + 1
                j = j + .BITS(i)
            Next i
            For i = 0 To j - 1
                m_Data(m_Ptr) = .HUFFVAL(i)
                m_Ptr = m_Ptr + 1
            Next i
        End With
    Else
        With HuffDC(HIndex)
            m_Data(m_Ptr) = HIndex
            m_Ptr = m_Ptr + 1
            j = 0
            For i = 0 To 15
                m_Data(m_Ptr) = .BITS(i)
                m_Ptr = m_Ptr + 1
                j = j + .BITS(i)
            Next i
            For i = 0 To j - 1
                m_Data(m_Ptr) = .HUFFVAL(i)
                m_Ptr = m_Ptr + 1
            Next i
        End With
    End If

    m_Data(MarkerPos + 2) = (m_Ptr - MarkerPos - 2) \ 256&
    m_Data(MarkerPos + 3) = (m_Ptr - MarkerPos - 2) And 255&
End Sub
Private Sub InsertMarker(TheMarker As Long)
    m_Data(m_Ptr) = 255
    m_Data(m_Ptr + 1) = TheMarker
    m_Ptr = m_Ptr + 2
End Sub

Private Sub InsertSOSNonInterleaved(CompIndex As Long, Td As Long, Ta As Long)
    Dim p         As Long
    Dim n         As Long
    Dim Pred      As Long



    m_Data(m_Ptr) = 255
    m_Data(m_Ptr + 1) = SOS
    m_Data(m_Ptr + 2) = 8 \ 256
    m_Data(m_Ptr + 3) = 8 And 255
    m_Data(m_Ptr + 4) = 1
    m_Ptr = m_Ptr + 5
    m_Data(m_Ptr) = Comp(CompIndex).Ci
    m_Data(m_Ptr + 1) = Td * 16 Or Ta
    m_Ptr = m_Ptr + 2
    m_Data(m_Ptr) = 0
    m_Data(m_Ptr + 1) = 63
    m_Data(m_Ptr + 2) = 0
    m_Ptr = m_Ptr + 3


    With Comp(CompIndex)

        p = 0
        n = UBound(.data) + 1
        Pred = 0

        WriteBitsBegin
        While p <> n
            EncodeCoefficients .data, p, Pred, Td, Ta
        Wend
        WriteBitsEnd

    End With

End Sub

Private Sub InsertSOSInterleaved(CompIndex() As Long, Td() As Long, Ta() As Long, FirstIndex As Long, SecondIndex As Long)


    Dim f         As Long
    Dim g         As Long
    Dim H         As Long
    Dim i         As Long
    Dim j         As Long
    Dim Lx        As Long
    Dim Ns        As Long
    Dim MCUx      As Long
    Dim MCUy      As Long

    Dim p()        As Long
    Dim pLF()      As Long
    Dim Pred()     As Long
    Dim MCUr()     As Long
    Dim Pad64(63)  As Integer


    Ns = SecondIndex - FirstIndex + 1
    Lx = 6 + 2 * Ns

    m_Data(m_Ptr) = 255
    m_Data(m_Ptr + 1) = SOS
    m_Data(m_Ptr + 2) = Lx \ 256
    m_Data(m_Ptr + 3) = Lx And 255
    m_Data(m_Ptr + 4) = Ns
    m_Ptr = m_Ptr + 5
    For i = FirstIndex To SecondIndex
        m_Data(m_Ptr) = Comp(CompIndex(i)).Ci
        m_Data(m_Ptr + 1) = Td(i) * 16 Or Ta(i)
        m_Ptr = m_Ptr + 2
    Next i
    m_Data(m_Ptr) = 0
    m_Data(m_Ptr + 1) = 63
    m_Data(m_Ptr + 2) = 0
    m_Ptr = m_Ptr + 3


    ReDim p(FirstIndex To SecondIndex, VMax - 1)
    ReDim Pred(FirstIndex To SecondIndex)
    ReDim pLF(FirstIndex To SecondIndex)
    ReDim MCUr(FirstIndex To SecondIndex)

    MCUx = (XX + 8 * HMax - 1) \ (8 * HMax)
    MCUy = (YY + 8 * VMax - 1) \ (8 * VMax)

    For f = FirstIndex To SecondIndex
        With Comp(CompIndex(f))
            H = (-Int(-XX * .Hi / HMax) + 7) \ 8

            For g = 0 To .Vi - 1
                p(f, g) = 64 * H * g
            Next g
            pLF(f) = 64 * H * (.Vi - 1)

            MCUr(f) = (H Mod .Hi)
            If MCUr(f) = 0 Then MCUr(f) = .Hi
        End With
    Next f

    WriteBitsBegin
    For j = 1 To MCUy - 1

        For i = 1 To MCUx - 1
        For f = FirstIndex To SecondIndex
        With Comp(CompIndex(f))
        For g = 1 To .Vi
        For H = 1 To .Hi
        EncodeCoefficients .data, p(f, g - 1), Pred(f), Td(f), Ta(f)
        Next H
        Next g
        End With
        Next f
        Next i

        For f = FirstIndex To SecondIndex
        With Comp(CompIndex(f))
        For g = 1 To .Vi
        For H = 1 To .Hi
        If H > MCUr(f) Then
            Pad64(0) = Pred(f)
            EncodeCoefficients Pad64, 0, Pred(f), Td(f), Ta(f)
        Else
            EncodeCoefficients .data, p(f, g - 1), Pred(f), Td(f), Ta(f)
        End If
        Next H
        Next g
        End With
        Next f


        For f = FirstIndex To SecondIndex
        For g = 0 To Comp(CompIndex(f)).Vi - 1
        p(f, g) = p(f, g) + pLF(f)
        Next g
        Next f
     Next j

    For i = 1 To MCUx
    For f = FirstIndex To SecondIndex
    With Comp(CompIndex(f))
    For g = 1 To .Vi
    For H = 1 To .Hi
    If p(f, g - 1) > UBound(.data) Or (i = MCUx And H > MCUr(f)) Then 'Pad with dummy block
        Pad64(0) = Pred(f)
        EncodeCoefficients Pad64, 0, Pred(f), Td(f), Ta(f)
    Else
        EncodeCoefficients .data, p(f, g - 1), Pred(f), Td(f), Ta(f)
    End If
    Next H
    Next g
    End With
    Next f
    Next i

    WriteBitsEnd

End Sub

Private Sub InsertSequentialScans(CompIndex() As Long, Td() As Long, Ta() As Long, FirstIndex As Long, SecondIndex As Long)

    Dim f            As Long
    Dim g            As Long
    Dim Nb           As Long
    Const MaxNb      As Long = 10
    Dim flag         As Boolean

    f = FirstIndex
    g = FirstIndex
    Nb = 0
    flag = False
    While f <= SecondIndex

        Nb = Nb + Comp(CompIndex(g)).Hi * Comp(CompIndex(g)).Vi
        g = g + 1

        If Nb > MaxNb Then
            flag = True
            If f <> g - 1 Then g = g - 1
        Else
            If (g - f) = 3 Or g > SecondIndex Then flag = True
        End If

        If flag Then
            If f = g - 1 Then
                InsertSOSNonInterleaved CompIndex(f), Td(f), Ta(f)
            Else
                InsertSOSInterleaved CompIndex, Td, Ta, f, g - 1
            End If
            Nb = 0
            f = g
            flag = False
        End If
    Wend

End Sub

Private Function OptimizeHuffmanTables(CompIndex() As Long, Td() As Long, Ta() As Long, FirstIndex As Long, SecondIndex As Long) As Long

    Dim f            As Long
    Dim g            As Long
    Dim i            As Long
    Dim j            As Long
    Dim k            As Long
    Dim k1           As Long
    Dim k2           As Long
    Dim Nb           As Long
    Const MaxNb      As Long = 10
    Dim freq(256)    As Long
    Dim freq2()      As Long
    Dim IsInter()    As Boolean
    Dim TdUsed()     As Boolean
    Dim TaUsed()     As Boolean
    Dim flag         As Boolean

    ReDim IsInter(FirstIndex To SecondIndex)
    ReDim TaUsed(3)
    ReDim TdUsed(3)


    f = FirstIndex
    g = FirstIndex
    Nb = 0
    flag = False
    While f <= SecondIndex

        Nb = Nb + Comp(CompIndex(g)).Hi * Comp(CompIndex(g)).Vi
        g = g + 1

        If Nb > MaxNb Then
            flag = True
            If f <> g - 1 Then g = g - 1
        Else
            If (g - f) = 3 Or g > SecondIndex Then flag = True
        End If

        If flag Then
            If f = g - 1 Then
                    TdUsed(Td(f)) = True
                    TaUsed(Ta(f)) = True
                    IsInter(f) = False
            Else
                For i = f To g - 1
                    TdUsed(Td(i)) = True
                    TaUsed(Ta(i)) = True
                    IsInter(i) = True
                Next i
            End If
            Nb = 0
            f = g
            flag = False
        End If
    Wend

    For i = 0 To 3
        If TdUsed(i) Then
            For f = FirstIndex To SecondIndex
                With Comp(CompIndex(f))
                    If Td(f) = i Then
                        If IsInter(f) Then
                            CollectStatisticsDCInterleaved .data, freq, .Hi, .Vi
                        Else
                            CollectStatisticsDCNonInterleaved .data, freq
                        End If
                    End If
                End With
            Next f

            freq2 = freq
            OptimizeHuffman HuffDC(i), freq
            ExpandHuffman HuffDC(i), IIf(PP = 12, 15, 11)


            For j = 0 To 15
                If freq2(j) <> 0 Then
                    k1 = j + Int(Log(HuffDC(i).EHUFSI(j)) * 1.442695040889) + 1 'Length of size category, in bits
                    k2 = k2 + freq2(j) * k1                                     'Sum all occurances of this coefficient, in bits
                    k = k + k2 \ 8                                              'add to byte count
                    k2 = k2 Mod 8                                               'preserve remaining bits
                End If
            Next j

        End If
        If TaUsed(i) Then
            For f = FirstIndex To SecondIndex
                If Td(f) = i Then CollectStatisticsAC Comp(CompIndex(f)).data, freq
            Next f
            freq2 = freq
            OptimizeHuffman HuffAC(i), freq
            ExpandHuffman HuffAC(i), 255
        
            For j = 0 To 255
                If freq2(j) <> 0 Then
                    k1 = (j And 15) + Int(Log(HuffAC(i).EHUFSI(j)) * 1.442695040889) + 1 'Length of size category, in bits
                    k2 = k2 + freq2(j) * k1                                              'Sum all occurances of this coefficient, in bits
                    k = k + k2 \ 8                                                       'add to byte count
                    k2 = k2 Mod 8                                                        'preserve remaining bits
                End If
            Next j

        End If
    Next i

    If (k2 Mod 8) <> 0 Then k = k + 1
    OptimizeHuffmanTables = k

End Function



Public Function SaveFile(FileName As String) As Long
    Dim CompIndex()  As Long
    Dim Td()         As Long
    Dim Ta()         As Long
    Dim FileNum      As Integer
    Dim i            As Long


    If Len(FileName) = 0 Then
        SaveFile = 1
    Else
        If (Len(Dir(FileName, vbNormal Or vbReadOnly Or vbHidden Or vbSystem Or vbArchive)) > 0) Then
            SaveFile = 2
        Else


    ReDim CompIndex(Nf - 1)
    ReDim Td(Nf - 1)
    ReDim Ta(Nf - 1)

    For i = 0 To Nf - 1
        CompIndex(i) = i
        Td(i) = IIf(i = 0, 0, 1)
        Ta(i) = IIf(i = 0, 0, 1)
    Next i

    i = OptimizeHuffmanTables(CompIndex, Td, Ta, 0, Nf - 1)
    i = 1.3 * i + 1000 + Len(m_Comment)
    ReDim m_Data(i)
    m_Ptr = 0

    InsertMarker SOI
    InsertJFIF

    If Len(m_Comment) > 0 Then InsertCOM m_Comment
    InsertCOM "JPEG Encoder Class" & vbCrLf & "Written by John Korejwa <korejwa@tiac.net>" & vbCrLf & "Visual Basic sourcecode available at planetsourcecode.com"

    InsertDQT m_Ptr, 0
    If Nf > 1 Then InsertDQT m_Ptr, 1

    InsertSOF SOF0

    InsertDHT m_Ptr, 0, False
    InsertDHT m_Ptr, 0, True
    If Nf > 1 Then
        InsertDHT m_Ptr, 1, False
        InsertDHT m_Ptr, 1, True
    End If

    InsertSequentialScans CompIndex, Td, Ta, 0, Nf - 1
    InsertMarker EOI


    ReDim Preserve m_Data(m_Ptr - 1)
    FileNum = FreeFile
    Open FileName For Binary Access Write As FileNum
        Put #FileNum, , m_Data
    Close FileNum
    Erase m_Data


        End If
    End If

End Function

Private Sub Class_Initialize()
    Dim i As Long
    Dim j As Long
    Dim dX As Long
    Dim zz As Long

    i = 0
    j = 0
    dX = 1
    For zz = 0 To 63
        ZigZag(i, j) = zz
        i = i + dX
        j = j - dX
        If i > 7 Then
            i = 7
            j = j + 2
            dX = -1
        ElseIf j > 7 Then
            j = 7
            i = i + 2
            dX = 1
        ElseIf i < 0 Then
            i = 0
            dX = 1
        ElseIf j < 0 Then
            j = 0
            dX = -1
        End If
    Next zz

    QLumin(0) = 16:   QLumin(1) = 11:   QLumin(2) = 12:   QLumin(3) = 14
    QLumin(4) = 12:   QLumin(5) = 10:   QLumin(6) = 16:   QLumin(7) = 14
    QLumin(8) = 13:   QLumin(9) = 14:   QLumin(10) = 18:  QLumin(11) = 17
    QLumin(12) = 16:  QLumin(13) = 19:  QLumin(14) = 24:  QLumin(15) = 40
    QLumin(16) = 26:  QLumin(17) = 24:  QLumin(18) = 22:  QLumin(19) = 22
    QLumin(20) = 24:  QLumin(21) = 49:  QLumin(22) = 35:  QLumin(23) = 37
    QLumin(24) = 29:  QLumin(25) = 40:  QLumin(26) = 58:  QLumin(27) = 51
    QLumin(28) = 61:  QLumin(29) = 60:  QLumin(30) = 57:  QLumin(31) = 51
    QLumin(32) = 56:  QLumin(33) = 55:  QLumin(34) = 64:  QLumin(35) = 72
    QLumin(36) = 92:  QLumin(37) = 78:  QLumin(38) = 64:  QLumin(39) = 68
    QLumin(40) = 87:  QLumin(41) = 69:  QLumin(42) = 55:  QLumin(43) = 56
    QLumin(44) = 80:  QLumin(45) = 109: QLumin(46) = 81:  QLumin(47) = 87
    QLumin(48) = 95:  QLumin(49) = 98:  QLumin(50) = 103: QLumin(51) = 104
    QLumin(52) = 103: QLumin(53) = 62:  QLumin(54) = 77:  QLumin(55) = 113
    QLumin(56) = 121: QLumin(57) = 112: QLumin(58) = 100: QLumin(59) = 120
    QLumin(60) = 92:  QLumin(61) = 101: QLumin(62) = 103: QLumin(63) = 99

    QChrom(0) = 17:   QChrom(1) = 18:   QChrom(2) = 18:   QChrom(3) = 24
    QChrom(4) = 21:   QChrom(5) = 24:   QChrom(6) = 47:   QChrom(7) = 26
    QChrom(8) = 26:   QChrom(9) = 47:   QChrom(10) = 99:  QChrom(11) = 66
    QChrom(12) = 56:  QChrom(13) = 66:  QChrom(14) = 99:  QChrom(15) = 99
    QChrom(16) = 99:  QChrom(17) = 99:  QChrom(18) = 99:  QChrom(19) = 99
    QChrom(20) = 99:  QChrom(21) = 99:  QChrom(22) = 99:  QChrom(23) = 99
    QChrom(24) = 99:  QChrom(25) = 99:  QChrom(26) = 99:  QChrom(27) = 99
    QChrom(28) = 99:  QChrom(29) = 99:  QChrom(30) = 99:  QChrom(31) = 99
    QChrom(32) = 99:  QChrom(33) = 99:  QChrom(34) = 99:  QChrom(35) = 99
    QChrom(36) = 99:  QChrom(37) = 99:  QChrom(38) = 99:  QChrom(39) = 99
    QChrom(40) = 99:  QChrom(41) = 99:  QChrom(42) = 99:  QChrom(43) = 99
    QChrom(44) = 99:  QChrom(45) = 99:  QChrom(46) = 99:  QChrom(47) = 99
    QChrom(48) = 99:  QChrom(49) = 99:  QChrom(50) = 99:  QChrom(51) = 99
    QChrom(52) = 99:  QChrom(53) = 99:  QChrom(54) = 99:  QChrom(55) = 99
    QChrom(56) = 99:  QChrom(57) = 99:  QChrom(58) = 99:  QChrom(59) = 99
    QChrom(60) = 99:  QChrom(61) = 99:  QChrom(62) = 99:  QChrom(63) = 99


    FDCTScale(0) = 0.353553390593273
    FDCTScale(1) = 0.25489778955208
    FDCTScale(2) = 0.270598050073098
    FDCTScale(3) = 0.300672443467523
    FDCTScale(4) = 0.353553390593273
    FDCTScale(5) = 0.449988111568207
    FDCTScale(6) = 0.653281482438186
    FDCTScale(7) = 1.28145772387074

    SetSamplingFrequencies 2, 2, 1, 1, 1, 1
    Quality = 75

End Sub



