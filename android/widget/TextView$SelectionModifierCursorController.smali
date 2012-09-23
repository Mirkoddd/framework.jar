.class Landroid/widget/TextView$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

.field private mStartHandleOnTop:Z

.field private mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4
    .parameter

    .prologue
    .line 12202
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    .line 12199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 12203
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 12204
    return-void
.end method

.method static synthetic access$9900(Landroid/widget/TextView$SelectionModifierCursorController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 12185
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->switchStartHandle()V

    return-void
.end method

.method private initDrawables()V
    .registers 4

    .prologue
    .line 12216
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_21

    .line 12217
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$8500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleLeftRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$8400(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8302(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12220
    :cond_21
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_42

    .line 12221
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$8800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRightRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$8700(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8602(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12225
    :cond_42
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 12226
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$9100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleLeftTopRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$9000(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8902(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12230
    :cond_6b
    return-void
.end method

.method private initHandles()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 12234
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-nez v0, :cond_1c

    .line 12235
    new-instance v0, Landroid/widget/TextView$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionStartHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    .line 12237
    :cond_1c
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-nez v0, :cond_35

    .line 12238
    new-instance v0, Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionEndHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    .line 12241
    :cond_35
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-nez v0, :cond_56

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 12242
    new-instance v0, Landroid/widget/TextView$SelectionStartTopHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionStartTopHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    .line 12246
    :cond_56
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->show()V

    .line 12247
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->show()V

    .line 12249
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_69

    .line 12250
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartTopHandleView;->show()V

    .line 12255
    :cond_69
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v0, :cond_88

    .line 12256
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 12257
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12271
    :cond_77
    :goto_77
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/TextView$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V

    .line 12273
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$8200(Landroid/widget/TextView;)V

    .line 12274
    return-void

    .line 12259
    :cond_88
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 12260
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_77

    .line 12261
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    goto :goto_77
.end method

.method private switchStartHandle()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 12421
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 12422
    .local v0, mTmpCoords:[I
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 12423
    iget-boolean v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v1, :cond_2a

    .line 12424
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 12425
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 12427
    :cond_20
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12434
    :cond_29
    :goto_29
    return-void

    .line 12429
    :cond_2a
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 12430
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12432
    :cond_3b
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    goto :goto_29
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    .line 12332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 12333
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_5
    if-ge v0, v2, :cond_24

    .line 12334
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 12335
    .local v1, offset:I
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_1b

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12336
    :cond_1b
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_21

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 12333
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 12338
    .end local v1           #offset:I
    :cond_24
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .registers 2

    .prologue
    .line 12345
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .registers 2

    .prologue
    .line 12341
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public getStartHandleToTop()Z
    .registers 2

    .prologue
    .line 12402
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 12277
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->hide()V

    .line 12278
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->hide()V

    .line 12280
    :cond_12
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartTopHandleView;->hide()V

    .line 12282
    :cond_1b
    return-void
.end method

.method public isSelectionStartDragged()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12357
    iget-boolean v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v2, :cond_15

    .line 12358
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionStartTopHandleView;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 12360
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 12358
    goto :goto_12

    .line 12360
    :cond_15
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionStartHandleView;->isDragging()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_21
    move v0, v1

    goto :goto_12
.end method

.method public onDetached()V
    .registers 3

    .prologue
    .line 12373
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 12374
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 12376
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->onDetached()V

    .line 12377
    :cond_12
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionEndHandleView;->onDetached()V

    .line 12379
    :cond_1b
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->onDetached()V

    .line 12381
    :cond_24
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    .line 12287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_7a

    .line 12326
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 12289
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 12290
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 12293
    .local v6, y:F
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v3, v7, v9

    .line 12297
    .local v3, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gtz v7, :cond_57

    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isPositionOnText(FF)Z
    invoke-static {v7, v5, v6}, Landroid/widget/TextView;->access$9200(Landroid/widget/TextView;FF)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 12299
    iget v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    sub-float v0, v5, v7

    .line 12300
    .local v0, deltaX:F
    iget v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    sub-float v1, v6, v7

    .line 12301
    .local v1, deltaY:F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 12302
    .local v2, distanceSquared:F
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSquaredTouchSlopDistance:I
    invoke-static {v7}, Landroid/widget/TextView;->access$7900(Landroid/widget/TextView;)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_57

    .line 12303
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->startSelectionActionMode()Z
    invoke-static {v7}, Landroid/widget/TextView;->access$9300(Landroid/widget/TextView;)Z

    .line 12304
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    const/4 v8, 0x1

    #setter for: Landroid/widget/TextView;->mDiscardNextActionUp:Z
    invoke-static {v7, v8}, Landroid/widget/TextView;->access$9402(Landroid/widget/TextView;Z)Z

    .line 12308
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    :cond_57
    iput v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 12309
    iput v6, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_7

    .line 12316
    .end local v3           #duration:J
    .end local v5           #x:F
    .end local v6           #y:F
    :pswitch_5c
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/TextView;->access$9500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 12318
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 12323
    :pswitch_72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto :goto_7

    .line 12287
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_72
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5c
        :pswitch_5c
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .parameter "isInTouchMode"

    .prologue
    .line 12366
    if-nez p1, :cond_5

    .line 12367
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 12369
    :cond_5
    return-void
.end method

.method public resetTouchOffsets()V
    .registers 2

    .prologue
    .line 12349
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12350
    return-void
.end method

.method public setStartHandleToTop(Z)V
    .registers 6
    .parameter "toTop"

    .prologue
    const/4 v3, 0x0

    .line 12386
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isRtlLanguage()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$9600(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 12387
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 12388
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 12389
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_1c

    .line 12390
    iput-boolean v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    .line 12399
    .end local v0           #isRtlCharAtOffset:Z
    .end local v1           #offset:I
    :goto_1b
    return-void

    .line 12394
    :cond_1c
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 12395
    iput-boolean p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    goto :goto_1b

    .line 12397
    :cond_27
    iput-boolean v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    goto :goto_1b
.end method

.method public show()V
    .registers 2

    .prologue
    .line 12207
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12213
    :goto_8
    return-void

    .line 12210
    :cond_9
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initDrawables()V

    .line 12211
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initHandles()V

    .line 12212
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$8200(Landroid/widget/TextView;)V

    goto :goto_8
.end method

.method public unvisibleAllHandle()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 12406
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 12407
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12408
    :cond_14
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setVisibility(I)V

    .line 12409
    :cond_1d
    return-void
.end method

.method public visibleAllHandle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 12412
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v0, :cond_18

    .line 12413
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12417
    :cond_e
    :goto_e
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setVisibility(I)V

    .line 12418
    :cond_17
    return-void

    .line 12415
    :cond_18
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    goto :goto_e
.end method
