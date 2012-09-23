.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 49
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .registers 5

    .prologue
    .line 56
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 57
    :try_start_3
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, i:I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 58
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 59
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 60
    .local v1, mt:Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 61
    monitor-exit v3

    .line 69
    :goto_1a
    return-object v1

    .line 64
    .end local v1           #mt:Landroid/text/MeasuredText;
    :cond_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 65
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 69
    .restart local v1       #mt:Landroid/text/MeasuredText;
    goto :goto_1a

    .line 64
    .end local v1           #mt:Landroid/text/MeasuredText;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .registers 5
    .parameter "mt"

    .prologue
    const/4 v3, 0x0

    .line 73
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 74
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_20

    .line 75
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    :try_start_d
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 77
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_21

    .line 78
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 83
    :cond_1f
    monitor-exit v2

    .line 85
    .end local v0           #i:I
    :cond_20
    return-object v3

    .line 76
    .restart local v0       #i:I
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 83
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 26
    .parameter "paint"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 158
    if-eqz p3, :cond_9

    .line 159
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 162
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    .line 163
    .local v4, p:I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 165
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_38

    .line 166
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    const/4 v8, 0x0

    .line 168
    .local v8, flags:I
    :goto_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v21

    .line 185
    :cond_35
    return v21

    .line 166
    .end local v8           #flags:I
    :cond_36
    const/4 v8, 0x1

    goto :goto_21

    .line 171
    :cond_38
    const/16 v21, 0x0

    .line 172
    .local v21, totalAdvance:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v4

    .line 173
    .local v20, level:I
    move v11, v4

    .local v11, q:I
    add-int/lit8 v19, v4, 0x1

    .local v19, i:I
    add-int v18, v4, p2

    .line 174
    .local v18, e:I
    :goto_45
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v19

    move/from16 v0, v20

    if-eq v2, v0, :cond_82

    .line 175
    :cond_55
    and-int/lit8 v2, v20, 0x1

    if-nez v2, :cond_85

    const/4 v8, 0x0

    .line 176
    .restart local v8       #flags:I
    :goto_5a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    add-float v21, v21, v2

    .line 178
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_35

    .line 181
    move/from16 v11, v19

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v19

    .line 173
    .end local v8           #flags:I
    :cond_82
    add-int/lit8 v19, v19, 0x1

    goto :goto_45

    .line 175
    :cond_85
    const/4 v8, 0x1

    goto :goto_5a
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 16
    .parameter "paint"
    .parameter "spans"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 191
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 192
    .local v1, workPaint:Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 194
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a
    array-length v2, p2

    if-ge v7, v2, :cond_1d

    .line 198
    aget-object v8, p2, v7

    .line 199
    .local v8, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_19

    move-object v0, v8

    .line 200
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 197
    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 202
    :cond_19
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_16

    .line 207
    .end local v8           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_1d
    if-nez v0, :cond_38

    .line 208
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 220
    .local v10, wid:F
    :goto_23
    if-eqz p4, :cond_37

    .line 221
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_67

    .line 222
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 223
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 230
    :cond_37
    :goto_37
    return v10

    .line 211
    .end local v10           #wid:F
    :cond_38
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 213
    .restart local v10       #wid:F
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 214
    .local v9, w:[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 215
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, e:I
    :goto_59
    if-ge v7, v6, :cond_61

    .line 216
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 215
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    .line 217
    :cond_61
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_23

    .line 225
    .end local v6           #e:I
    .end local v9           #w:[F
    :cond_67
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 226
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_37
.end method

.method breakText(IIZF)I
    .registers 9
    .parameter "start"
    .parameter "limit"
    .parameter "forwards"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 235
    .local v1, w:[F
    if-eqz p3, :cond_15

    .line 236
    move v0, p1

    .local v0, i:I
    :goto_6
    if-ge v0, p2, :cond_26

    .line 237
    aget v2, v1, v0

    sub-float/2addr p4, v2

    cmpg-float v2, p4, v3

    if-gez v2, :cond_12

    .line 238
    sub-int v2, v0, p1

    .line 249
    :goto_11
    return v2

    .line 236
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 242
    .end local v0           #i:I
    :cond_15
    move v0, p2

    .restart local v0       #i:I
    :cond_16
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_26

    .line 243
    aget v2, v1, v0

    sub-float/2addr p4, v2

    cmpg-float v2, p4, v3

    if-gez v2, :cond_16

    .line 244
    sub-int v2, p2, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 249
    :cond_26
    sub-int v2, p2, p1

    goto :goto_11
.end method

.method measure(II)F
    .registers 7
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, width:F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 255
    .local v1, w:[F
    move v0, p1

    .local v0, i:I
    :goto_4
    if-ge v0, p2, :cond_c

    .line 256
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 258
    :cond_c
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .registers 18
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "textDir"

    .prologue
    .line 92
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 93
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    .line 95
    sub-int v6, p3, p2

    .line 96
    .local v6, len:I
    iput v6, p0, Landroid/text/MeasuredText;->mLen:I

    .line 97
    const/4 v10, 0x0

    iput v10, p0, Landroid/text/MeasuredText;->mPos:I

    .line 99
    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v10, :cond_14

    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v10, v10

    if-ge v10, v6, :cond_1c

    .line 100
    :cond_14
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v10

    new-array v10, v10, [F

    iput-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 102
    :cond_1c
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v10, :cond_25

    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    array-length v10, v10

    if-ge v10, v6, :cond_2d

    .line 103
    :cond_25
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v10

    new-array v10, v10, [C

    iput-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 105
    :cond_2d
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {p1, p2, v0, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 107
    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_6a

    move-object v7, p1

    .line 108
    check-cast v7, Landroid/text/Spanned;

    .line 109
    .local v7, spanned:Landroid/text/Spanned;
    const-class v10, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p3

    invoke-interface {v7, p2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ReplacementSpan;

    .line 112
    .local v8, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_47
    array-length v10, v8

    if-ge v3, v10, :cond_6a

    .line 113
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    .line 114
    .local v9, startInPara:I
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    .line 115
    .local v2, endInPara:I
    move v5, v9

    .local v5, j:I
    :goto_5b
    if-ge v5, v2, :cond_67

    .line 116
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const v11, 0xfffc

    aput-char v11, v10, v5

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    .line 112
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 121
    .end local v2           #endInPara:I
    .end local v3           #i:I
    .end local v5           #j:I
    .end local v7           #spanned:Landroid/text/Spanned;
    .end local v8           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v9           #startInPara:I
    :cond_6a
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_7c

    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_7c

    sget-object v10, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_8c

    :cond_7c
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v10

    if-eqz v10, :cond_8c

    .line 125
    const/4 v10, 0x1

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 126
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 155
    :goto_8b
    return-void

    .line 128
    :cond_8c
    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v10, :cond_95

    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v10, v10

    if-ge v10, v6, :cond_9d

    .line 129
    :cond_95
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v10

    new-array v10, v10, [B

    iput-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 132
    :cond_9d
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_b3

    .line 133
    const/4 v1, 0x1

    .line 152
    .local v1, bidiRequest:I
    :goto_a4
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v10

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 153
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_8b

    .line 134
    .end local v1           #bidiRequest:I
    :cond_b3
    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_bb

    .line 135
    const/4 v1, -0x1

    .restart local v1       #bidiRequest:I
    goto :goto_a4

    .line 136
    .end local v1           #bidiRequest:I
    :cond_bb
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_c3

    .line 137
    const/4 v1, 0x2

    .restart local v1       #bidiRequest:I
    goto :goto_a4

    .line 138
    .end local v1           #bidiRequest:I
    :cond_c3
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_cb

    .line 139
    const/4 v1, -0x2

    .restart local v1       #bidiRequest:I
    goto :goto_a4

    .line 141
    .end local v1           #bidiRequest:I
    :cond_cb
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_da

    .line 142
    sget-boolean v10, Landroid/widget/TextView;->mText_char_type:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d8

    .line 143
    const/4 v1, -0x1

    .restart local v1       #bidiRequest:I
    goto :goto_a4

    .line 145
    .end local v1           #bidiRequest:I
    :cond_d8
    const/4 v1, 0x1

    .restart local v1       #bidiRequest:I
    goto :goto_a4

    .line 149
    .end local v1           #bidiRequest:I
    :cond_da
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v4

    .line 150
    .local v4, isRtl:Z
    if-eqz v4, :cond_e7

    const/4 v1, -0x1

    .restart local v1       #bidiRequest:I
    :goto_e6
    goto :goto_a4

    .end local v1           #bidiRequest:I
    :cond_e7
    const/4 v1, 0x1

    goto :goto_e6
.end method
