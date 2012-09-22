.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mIsDeviceDefaultTheme:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field mTextColorsOff:Landroid/content/res/ColorStateList;

.field mTextColorsOn:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    const v0, 0x10103de

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 98
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 105
    iput-boolean v7, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 141
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 142
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 143
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    iput v6, v5, Landroid/text/TextPaint;->density:F

    .line 144
    iget-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 146
    sget-object v5, Lcom/android/internal/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 152
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 153
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 155
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 157
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 160
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 162
    .local v1, appearance:I
    if-eqz v1, :cond_73

    .line 163
    invoke-virtual {p0, p1, v1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 168
    .local v2, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    .line 169
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    .line 172
    invoke-virtual {p0}, Landroid/widget/Switch;->refreshDrawableState()V

    .line 173
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 175
    const/4 v4, 0x0

    .line 177
    .local v4, xpp:Landroid/content/res/XmlResourceParser;
    :try_start_91
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106009a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 178
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    .line 179
    if-eqz v4, :cond_ab

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 181
    :cond_ab
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060099

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 182
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    .line 183
    if-eqz v4, :cond_c5

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_c5
    .catchall {:try_start_91 .. :try_end_c5} :catchall_d3
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_c5} :catch_cc

    .line 185
    :cond_c5
    const/4 v4, 0x0

    .line 188
    if-eqz v4, :cond_cb

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 190
    :cond_cb
    :goto_cb
    return-void

    .line 186
    :catch_cc
    move-exception v5

    .line 188
    if-eqz v4, :cond_cb

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_cb

    :catchall_d3
    move-exception v5

    if-eqz v4, :cond_d9

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_d9
    throw v5
.end method

.method private animateThumbToCheckedState(Z)V
    .registers 2
    .parameter "newCheckedState"

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 538
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "ev"

    .prologue
    .line 500
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 501
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 502
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 503
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 504
    return-void
.end method

.method private getTargetCheckedState()Z
    .registers 3

    .prologue
    .line 541
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private getThumbScrollRange()I
    .registers 3

    .prologue
    .line 670
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 671
    const/4 v0, 0x0

    .line 674
    :goto_5
    return v0

    .line 673
    :cond_6
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 674
    iget v0, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v1, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_5
.end method

.method private hitThumb(FF)Z
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 423
    iget-object v4, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 424
    iget v4, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 425
    .local v3, thumbTop:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchLeft:I

    iget v5, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 426
    .local v1, thumbLeft:I
    iget v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 428
    .local v2, thumbRight:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 429
    .local v0, thumbBottom:I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_47

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_47

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_47

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_47

    const/4 v4, 0x1

    :goto_46
    return v4

    :cond_47
    const/4 v4, 0x0

    goto :goto_46
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 10
    .parameter "text"

    .prologue
    .line 414
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .registers 4
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_12

    .line 250
    :goto_4
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 251
    return-void

    .line 238
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 239
    goto :goto_4

    .line 242
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 243
    goto :goto_4

    .line 246
    :pswitch_e
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 236
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 512
    iput v4, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_38

    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_38

    move v0, v3

    .line 516
    .local v0, commitChange:Z
    :goto_11
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 518
    if-eqz v0, :cond_41

    .line 520
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 521
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 522
    .local v2, xvel:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3c

    .line 523
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3a

    move v1, v3

    .line 527
    .local v1, newState:Z
    :goto_34
    invoke-direct {p0, v1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 531
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :goto_37
    return-void

    .end local v0           #commitChange:Z
    :cond_38
    move v0, v4

    .line 514
    goto :goto_11

    .restart local v0       #commitChange:Z
    .restart local v2       #xvel:F
    :cond_3a
    move v1, v4

    .line 523
    goto :goto_34

    .line 525
    :cond_3c
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1       #newState:Z
    goto :goto_34

    .line 529
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :cond_41
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_37
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 688
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 690
    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 694
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 695
    :cond_10
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 697
    :cond_19
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 698
    return-void
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    .prologue
    .line 662
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 663
    .local v0, padding:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 664
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 666
    :cond_15
    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 707
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 708
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 709
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 710
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 679
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 680
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 681
    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 683
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .parameter "canvas"

    .prologue
    .line 600
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 603
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 604
    .local v6, switchLeft:I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/Switch;->mSwitchTop:I

    .line 605
    .local v9, switchTop:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/Switch;->mSwitchRight:I

    .line 606
    .local v7, switchRight:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 608
    .local v1, switchBottom:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v6, v9, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 609
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 613
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 614
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v13

    .line 615
    .local v3, switchInnerLeft:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int v5, v9, v13

    .line 616
    .local v5, switchInnerTop:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v13

    .line 617
    .local v4, switchInnerRight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v13

    .line 618
    .local v2, switchInnerBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 620
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 621
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v11, v13

    .line 622
    .local v11, thumbPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    add-int v10, v13, v11

    .line 623
    .local v10, thumbLeft:I
    add-int v13, v3, v11

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int v12, v13, v14

    .line 625
    .local v12, thumbRight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v10, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 626
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 629
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    if-eqz v13, :cond_11f

    .line 630
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v13

    if-eqz v13, :cond_fb

    .line 631
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_c1

    .line 632
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 649
    :cond_c1
    :goto_c1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v14

    iput-object v14, v13, Landroid/text/TextPaint;->drawableState:[I

    .line 651
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v13

    if-eqz v13, :cond_144

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 653
    .local v8, switchText:Landroid/text/Layout;
    :goto_d5
    add-int v13, v10, v12

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    add-int v14, v5, v2

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 655
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 657
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 658
    return-void

    .line 637
    .end local v8           #switchText:Landroid/text/Layout;
    :cond_fb
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_c1

    .line 638
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_c1

    .line 644
    :cond_11f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_c1

    .line 645
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_c1

    .line 651
    :cond_144
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_d5
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 553
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 555
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v7

    int-to-float v7, v7

    :goto_e
    iput v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 557
    invoke-virtual {p0}, Landroid/widget/Switch;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingRight()I

    move-result v8

    sub-int v4, v7, v8

    .line 558
    .local v4, switchRight:I
    iget v7, p0, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v3, v4, v7

    .line 559
    .local v3, switchLeft:I
    const/4 v5, 0x0

    .line 560
    .local v5, switchTop:I
    const/4 v2, 0x0

    .line 561
    .local v2, switchBottom:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getGravity()I

    move-result v7

    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_8c

    .line 564
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v5

    .line 565
    iget v7, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v2, v5, v7

    .line 580
    :goto_31
    iput v3, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 581
    iput v5, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 582
    iput v2, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 583
    iput v4, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 585
    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 586
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5b

    move-object v0, v1

    .line 587
    check-cast v0, Landroid/view/ViewGroup;

    .line 588
    .local v0, group:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 589
    .local v6, theme:I
    const v7, 0x1030128

    if-eq v6, v7, :cond_58

    const v7, 0x103012b

    if-ne v6, v7, :cond_88

    .line 591
    :cond_58
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 596
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v6           #theme:I
    :cond_5b
    :goto_5b
    return-void

    .line 555
    .end local v1           #parent:Landroid/view/ViewParent;
    .end local v2           #switchBottom:I
    .end local v3           #switchLeft:I
    .end local v4           #switchRight:I
    .end local v5           #switchTop:I
    :cond_5c
    const/4 v7, 0x0

    goto :goto_e

    .line 569
    .restart local v2       #switchBottom:I
    .restart local v3       #switchLeft:I
    .restart local v4       #switchRight:I
    .restart local v5       #switchTop:I
    :sswitch_5e
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v8, v8, 0x2

    sub-int v5, v7, v8

    .line 571
    iget v7, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v2, v5, v7

    .line 572
    goto :goto_31

    .line 575
    :sswitch_79
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v8

    sub-int v2, v7, v8

    .line 576
    iget v7, p0, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v5, v2, v7

    goto :goto_31

    .line 593
    .restart local v0       #group:Landroid/view/ViewGroup;
    .restart local v1       #parent:Landroid/view/ViewParent;
    .restart local v6       #theme:I
    :cond_88
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    goto :goto_5b

    .line 561
    :sswitch_data_8c
    .sparse-switch
        0x10 -> :sswitch_5e
        0x50 -> :sswitch_79
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 331
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 332
    .local v6, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 333
    .local v0, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 334
    .local v7, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 337
    .local v1, heightSize:I
    iget-object v8, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v8, :cond_1c

    .line 338
    iget-object v8, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v8}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 340
    :cond_1c
    iget-object v8, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v8, :cond_28

    .line 341
    iget-object v8, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v8}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 344
    :cond_28
    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 345
    iget-object v8, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 346
    .local v2, maxTextWidth:I
    iget v8, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v9, v2, 0x2

    iget v10, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 348
    .local v5, switchWidth:I
    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 350
    .local v4, switchHeight:I
    iget v8, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    iput v8, p0, Landroid/widget/Switch;->mThumbWidth:I

    .line 352
    sparse-switch v6, :sswitch_data_8c

    .line 366
    :goto_66
    sparse-switch v0, :sswitch_data_96

    .line 380
    :goto_69
    iput v5, p0, Landroid/widget/Switch;->mSwitchWidth:I

    .line 381
    iput v4, p0, Landroid/widget/Switch;->mSwitchHeight:I

    .line 383
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 384
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredHeight()I

    move-result v3

    .line 385
    .local v3, measuredHeight:I
    if-ge v3, v4, :cond_7d

    .line 386
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredWidthAndState()I

    move-result v8

    invoke-virtual {p0, v8, v4}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    .line 388
    :cond_7d
    return-void

    .line 354
    .end local v3           #measuredHeight:I
    :sswitch_7e
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 355
    goto :goto_66

    .line 358
    :sswitch_83
    move v7, v5

    .line 359
    goto :goto_66

    .line 368
    :sswitch_85
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 369
    goto :goto_69

    .line 372
    :sswitch_8a
    move v1, v4

    .line 373
    goto :goto_69

    .line 352
    :sswitch_data_8c
    .sparse-switch
        -0x80000000 -> :sswitch_7e
        0x0 -> :sswitch_83
    .end sparse-switch

    .line 366
    :sswitch_data_96
    .sparse-switch
        -0x80000000 -> :sswitch_85
        0x0 -> :sswitch_8a
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 395
    iget-object v1, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v1, :cond_c

    .line 411
    :cond_b
    :goto_b
    return-void

    .line 398
    :cond_c
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 399
    iget-object v1, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 400
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 401
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x104058a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_27
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 405
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_2f
    iget-object v1, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 406
    .restart local v0       #text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 407
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x104058b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_44
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 434
    iget-object v6, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 436
    .local v0, action:I
    packed-switch v0, :pswitch_data_a2

    .line 496
    :cond_e
    :goto_e
    :pswitch_e
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_12
    :goto_12
    return v5

    .line 438
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 439
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 440
    .local v4, y:F
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-direct {p0, v3, v4}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 441
    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 442
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 443
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_e

    .line 449
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2e
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_ae

    goto :goto_e

    .line 455
    :pswitch_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 456
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 457
    .restart local v4       #y:F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_5a

    iget v6, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_e

    .line 459
    :cond_5a
    iput v8, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 460
    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 461
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 462
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_12

    .line 469
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 470
    .restart local v3       #x:F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 471
    .local v1, dx:F
    const/4 v6, 0x0

    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 473
    .local v2, newPos:F
    iget v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_12

    .line 474
    iput v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 475
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 476
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    goto :goto_12

    .line 486
    .end local v1           #dx:F
    .end local v2           #newPos:F
    .end local v3           #x:F
    :pswitch_8f
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v6, v8, :cond_98

    .line 487
    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_12

    .line 490
    :cond_98
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 491
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_e

    .line 436
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_8f
        :pswitch_2e
        :pswitch_8f
    .end packed-switch

    .line 449
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_e
        :pswitch_34
        :pswitch_68
    .end packed-switch
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 546
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 547
    if-eqz p1, :cond_10

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_a
    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 548
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 549
    return-void

    .line 547
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .registers 11
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 197
    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 204
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 206
    .local v1, colors:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3c

    .line 207
    iput-object v1, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 213
    :goto_11
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 215
    .local v3, ts:I
    if-eqz v3, :cond_2b

    .line 216
    int-to-float v5, v3

    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2b

    .line 217
    iget-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 218
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 224
    :cond_2b
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 226
    .local v4, typefaceIndex:I
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 229
    .local v2, styleIndex:I
    invoke-direct {p0, v4, v2}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    return-void

    .line 210
    .end local v2           #styleIndex:I
    .end local v3           #ts:I
    .end local v4           #typefaceIndex:I
    :cond_3c
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_11
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter "tf"

    .prologue
    .line 291
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 292
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 294
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 295
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 297
    :cond_13
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 260
    if-lez p2, :cond_36

    .line 261
    if-nez p1, :cond_2d

    .line 262
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 267
    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 269
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 270
    .local v1, typefaceStyle:I
    :goto_13
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 271
    .local v0, need:I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 272
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_34

    const/high16 v2, -0x4180

    :goto_29
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 278
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_2c
    return-void

    .line 264
    :cond_2d
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_a

    :cond_32
    move v1, v2

    .line 269
    goto :goto_13

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_34
    move v2, v3

    .line 272
    goto :goto_29

    .line 274
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_36
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 275
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 276
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2c
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "textOff"

    .prologue
    .line 325
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 326
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 327
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "textOn"

    .prologue
    .line 310
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 311
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 312
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
