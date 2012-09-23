.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBottomPadding:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mIncludePad:Z

.field private mInts:Landroid/text/PackedIntVector;

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 503
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 505
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 17
    .parameter "base"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 20
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 64
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 23
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 81
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 31
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 100
    if-nez p10, :cond_f2

    move-object/from16 v3, p2

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 107
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 108
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 110
    if-eqz p10, :cond_10a

    .line 111
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 112
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 113
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 120
    :goto_39
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 122
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 132
    if-eqz p10, :cond_62

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 135
    .local v13, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 136
    move/from16 v0, p11

    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 137
    move-object/from16 v0, p10

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 138
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 147
    .end local v13           #e:Landroid/text/Layout$Ellipsizer;
    :cond_62
    if-eqz p10, :cond_121

    .line 148
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 149
    .local v18, start:[I
    const/4 v2, 0x3

    const/high16 v3, -0x8000

    aput v3, v18, v2

    .line 154
    :goto_6e
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    sget-object v3, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v12, v2

    .line 156
    .local v12, dirs:[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 157
    .local v14, fm:Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 158
    .local v10, asc:I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 160
    .local v11, desc:I
    const/4 v2, 0x0

    const/high16 v3, 0x4000

    aput v3, v18, v2

    .line 161
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v18, v2

    .line 162
    const/4 v2, 0x2

    aput v11, v18, v2

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 165
    const/4 v2, 0x1

    sub-int v3, v11, v10

    aput v3, v18, v2

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 172
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 174
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_139

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v2, :cond_cf

    .line 176
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_cf
    move-object/from16 v16, p1

    .line 179
    check-cast v16, Landroid/text/Spannable;

    .line 180
    .local v16, sp:Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 181
    .local v17, spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_e3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v15, v2, :cond_128

    .line 182
    aget-object v2, v17, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 181
    add-int/lit8 v15, v15, 0x1

    goto :goto_e3

    .line 100
    .end local v10           #asc:I
    .end local v11           #desc:I
    .end local v12           #dirs:[Landroid/text/Layout$Directions;
    .end local v14           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v15           #i:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v18           #start:[I
    :cond_f2
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_101

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_101
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 115
    :cond_10a
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 116
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_39

    .line 151
    :cond_121
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .restart local v18       #start:[I
    goto/16 :goto_6e

    .line 184
    .restart local v10       #asc:I
    .restart local v11       #desc:I
    .restart local v12       #dirs:[Landroid/text/Layout$Directions;
    .restart local v14       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15       #i:I
    .restart local v16       #sp:Landroid/text/Spannable;
    .restart local v17       #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_128
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 188
    .end local v15           #i:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_139
    return-void
.end method

.method static synthetic access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .registers 45
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_9

    .line 376
    :goto_8
    return-void

    .line 195
    :cond_9
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_9e

    .line 196
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/widget/TextView;->textViewCharType(C)Z

    move-result v4

    sput-boolean v4, Landroid/widget/TextView;->mText_char_type:Z

    .line 202
    :goto_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 203
    .local v3, text:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v30

    .line 207
    .local v30, len:I
    const/16 v4, 0xa

    add-int/lit8 v5, p2, -0x1

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v24

    .line 208
    .local v24, find:I
    if-gez v24, :cond_a3

    .line 209
    const/16 v24, 0x0

    .line 214
    :goto_30
    sub-int v20, p2, v24

    .line 215
    .local v20, diff:I
    add-int p3, p3, v20

    .line 216
    add-int p4, p4, v20

    .line 217
    sub-int p2, p2, v20

    .line 222
    const/16 v4, 0xa

    add-int v5, p2, p4

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v31

    .line 223
    .local v31, look:I
    if-gez v31, :cond_a6

    .line 224
    move/from16 v31, v30

    .line 228
    :goto_44
    add-int v4, p2, p4

    sub-int v18, v31, v4

    .line 229
    .local v18, change:I
    add-int p3, p3, v18

    .line 230
    add-int p4, p4, v18

    .line 234
    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_ab

    move-object/from16 v34, v3

    .line 235
    check-cast v34, Landroid/text/Spanned;

    .line 239
    .local v34, sp:Landroid/text/Spanned;
    :cond_54
    const/16 v16, 0x0

    .line 241
    .local v16, again:Z
    add-int v4, p2, p4

    const-class v5, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-interface {v0, v1, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v25

    .line 244
    .local v25, force:[Ljava/lang/Object;
    const/16 v27, 0x0

    .local v27, i:I
    :goto_64
    move-object/from16 v0, v25

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_a9

    .line 245
    aget-object v4, v25, v27

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v35

    .line 246
    .local v35, st:I
    aget-object v4, v25, v27

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v21

    .line 248
    .local v21, en:I
    move/from16 v0, v35

    move/from16 v1, p2

    if-ge v0, v1, :cond_8b

    .line 249
    const/16 v16, 0x1

    .line 251
    sub-int v20, p2, v35

    .line 252
    add-int p3, p3, v20

    .line 253
    add-int p4, p4, v20

    .line 254
    sub-int p2, p2, v20

    .line 257
    :cond_8b
    add-int v4, p2, p4

    move/from16 v0, v21

    if-le v0, v4, :cond_9b

    .line 258
    const/16 v16, 0x1

    .line 260
    add-int v4, p2, p4

    sub-int v20, v21, v4

    .line 261
    add-int p3, p3, v20

    .line 262
    add-int p4, p4, v20

    .line 244
    :cond_9b
    add-int/lit8 v27, v27, 0x1

    goto :goto_64

    .line 198
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v16           #again:Z
    .end local v18           #change:I
    .end local v20           #diff:I
    .end local v21           #en:I
    .end local v24           #find:I
    .end local v25           #force:[Ljava/lang/Object;
    .end local v27           #i:I
    .end local v30           #len:I
    .end local v31           #look:I
    .end local v34           #sp:Landroid/text/Spanned;
    .end local v35           #st:I
    :cond_9e
    const/4 v4, 0x0

    sput-boolean v4, Landroid/widget/TextView;->mText_char_type:Z

    goto/16 :goto_1c

    .line 211
    .restart local v3       #text:Ljava/lang/CharSequence;
    .restart local v24       #find:I
    .restart local v30       #len:I
    :cond_a3
    add-int/lit8 v24, v24, 0x1

    goto :goto_30

    .line 226
    .restart local v20       #diff:I
    .restart local v31       #look:I
    :cond_a6
    add-int/lit8 v31, v31, 0x1

    goto :goto_44

    .line 265
    .restart local v16       #again:Z
    .restart local v18       #change:I
    .restart local v25       #force:[Ljava/lang/Object;
    .restart local v27       #i:I
    .restart local v34       #sp:Landroid/text/Spanned;
    :cond_a9
    if-nez v16, :cond_54

    .line 270
    .end local v16           #again:Z
    .end local v25           #force:[Ljava/lang/Object;
    .end local v27           #i:I
    .end local v34           #sp:Landroid/text/Spanned;
    :cond_ab
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v36

    .line 271
    .local v36, startline:I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v37

    .line 273
    .local v37, startv:I
    add-int v4, p2, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v22

    .line 274
    .local v22, endline:I
    add-int v4, p2, p4

    move/from16 v0, v30

    if-ne v4, v0, :cond_cd

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v22

    .line 276
    :cond_cd
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v23

    .line 277
    .local v23, endv:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v4

    move/from16 v0, v22

    if-ne v0, v4, :cond_223

    const/16 v29, 0x1

    .line 283
    .local v29, islast:Z
    :goto_df
    sget-object v5, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 284
    :try_start_e2
    sget-object v2, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 285
    .local v2, reflowed:Landroid/text/StaticLayout;
    const/4 v4, 0x0

    sput-object v4, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 286
    monitor-exit v5
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_227

    .line 288
    if-nez v2, :cond_22a

    .line 289
    new-instance v2, Landroid/text/StaticLayout;

    .end local v2           #reflowed:Landroid/text/StaticLayout;
    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 294
    .restart local v2       #reflowed:Landroid/text/StaticLayout;
    :goto_f0
    add-int v5, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    const/4 v15, 0x0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v15}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;Z)V

    .line 299
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v32

    .line 305
    .local v32, n:I
    add-int v4, p2, p4

    move/from16 v0, v30

    if-eq v4, v0, :cond_12d

    add-int/lit8 v4, v32, -0x1

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    add-int v5, p2, p4

    if-ne v4, v5, :cond_12d

    .line 307
    add-int/lit8 v32, v32, -0x1

    .line 311
    :cond_12d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v5, v22, v36

    move/from16 v0, v36

    invoke-virtual {v4, v0, v5}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    sub-int v5, v22, v36

    move/from16 v0, v36

    invoke-virtual {v4, v0, v5}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 316
    move/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v26

    .line 317
    .local v26, ht:I
    const/16 v39, 0x0

    .local v39, toppad:I
    const/16 v17, 0x0

    .line 319
    .local v17, botpad:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v4, :cond_161

    if-nez v36, :cond_161

    .line 320
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v39

    .line 321
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 322
    sub-int v26, v26, v39

    .line 324
    :cond_161
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v4, :cond_175

    if-eqz v29, :cond_175

    .line 325
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v17

    .line 326
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 327
    add-int v26, v26, v17

    .line 330
    :cond_175
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v5, 0x0

    sub-int v6, p4, p3

    move/from16 v0, v36

    invoke-virtual {v4, v0, v5, v6}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v5, 0x1

    sub-int v6, v37, v23

    add-int v6, v6, v26

    move/from16 v0, v36

    invoke-virtual {v4, v0, v5, v6}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 337
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v4, :cond_22f

    .line 338
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v28, v0

    .line 339
    .local v28, ints:[I
    const/4 v4, 0x3

    const/high16 v5, -0x8000

    aput v5, v28, v4

    .line 344
    :goto_19f
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/text/Layout$Directions;

    move-object/from16 v33, v0

    .line 346
    .local v33, objects:[Landroid/text/Layout$Directions;
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_1a6
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_238

    .line 347
    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1e

    or-int/2addr v6, v4

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_236

    const/high16 v4, 0x2000

    :goto_1c6
    or-int/2addr v4, v6

    aput v4, v28, v5

    .line 351
    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    add-int v38, v4, v37

    .line 352
    .local v38, top:I
    if-lez v27, :cond_1d5

    .line 353
    sub-int v38, v38, v39

    .line 354
    :cond_1d5
    const/4 v4, 0x1

    aput v38, v28, v4

    .line 356
    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v19

    .line 357
    .local v19, desc:I
    add-int/lit8 v4, v32, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_1e6

    .line 358
    add-int v19, v19, v17

    .line 360
    :cond_1e6
    const/4 v4, 0x2

    aput v19, v28, v4

    .line 361
    const/4 v4, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v5

    aput-object v5, v33, v4

    .line 363
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v4, :cond_20a

    .line 364
    const/4 v4, 0x3

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v5

    aput v5, v28, v4

    .line 365
    const/4 v4, 0x4

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v5

    aput v5, v28, v4

    .line 368
    :cond_20a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v5, v36, v27

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    add-int v5, v36, v27

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v0}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 346
    add-int/lit8 v27, v27, 0x1

    goto :goto_1a6

    .line 277
    .end local v2           #reflowed:Landroid/text/StaticLayout;
    .end local v17           #botpad:I
    .end local v19           #desc:I
    .end local v26           #ht:I
    .end local v27           #i:I
    .end local v28           #ints:[I
    .end local v29           #islast:Z
    .end local v32           #n:I
    .end local v33           #objects:[Landroid/text/Layout$Directions;
    .end local v38           #top:I
    .end local v39           #toppad:I
    :cond_223
    const/16 v29, 0x0

    goto/16 :goto_df

    .line 286
    .restart local v29       #islast:Z
    :catchall_227
    move-exception v4

    :try_start_228
    monitor-exit v5
    :try_end_229
    .catchall {:try_start_228 .. :try_end_229} :catchall_227

    throw v4

    .line 291
    .restart local v2       #reflowed:Landroid/text/StaticLayout;
    :cond_22a
    invoke-virtual {v2}, Landroid/text/StaticLayout;->prepare()V

    goto/16 :goto_f0

    .line 341
    .restart local v17       #botpad:I
    .restart local v26       #ht:I
    .restart local v32       #n:I
    .restart local v39       #toppad:I
    :cond_22f
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v28, v0

    .restart local v28       #ints:[I
    goto/16 :goto_19f

    .line 347
    .restart local v27       #i:I
    .restart local v33       #objects:[Landroid/text/Layout$Directions;
    :cond_236
    const/4 v4, 0x0

    goto :goto_1c6

    .line 372
    :cond_238
    sget-object v5, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 373
    :try_start_23b
    sput-object v2, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 374
    invoke-virtual {v2}, Landroid/text/StaticLayout;->finish()V

    .line 375
    monitor-exit v5

    goto/16 :goto_8

    :catchall_243
    move-exception v4

    monitor-exit v5
    :try_end_245
    .catchall {:try_start_23b .. :try_end_245} :catchall_243

    throw v4
.end method


# virtual methods
.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 420
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 483
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    .line 484
    const/4 v0, 0x0

    .line 487
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_5
.end method

.method public getEllipsisStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 474
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    .line 475
    const/4 v0, 0x0

    .line 478
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_5
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 425
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 5
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    .line 400
    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 390
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 4
    .parameter "line"

    .prologue
    .line 410
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 385
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 405
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 415
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method
