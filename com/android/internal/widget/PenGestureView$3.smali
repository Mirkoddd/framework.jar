.class Lcom/android/internal/widget/PenGestureView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/PenGestureView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/PenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/PenGestureView;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 125
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PenGesture"

    const-string v1, "Pen DoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/PenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 121
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PenGesture"

    const-string v1, "Pen LongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 13
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/16 v7, 0x64

    const/4 v4, 0x1

    .line 137
    if-eqz p1, :cond_79

    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 139
    .local v2, diffX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 140
    .local v3, diffY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 141
    .local v0, absDiffX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 143
    .local v1, absDiffY:I
    if-ge v1, v7, :cond_43

    if-le v0, v1, :cond_43

    .line 144
    if-gez v2, :cond_42

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$300(Lcom/android/internal/widget/PenGestureView;)I

    move-result v5

    if-lt v0, v5, :cond_42

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 145
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    const/4 v6, 0x4

    #calls: Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V
    invoke-static {v5, v6}, Lcom/android/internal/widget/PenGestureView;->access$400(Lcom/android/internal/widget/PenGestureView;I)V

    .line 146
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 164
    .end local v0           #absDiffX:I
    .end local v1           #absDiffY:I
    .end local v2           #diffX:I
    .end local v3           #diffY:I
    :cond_42
    :goto_42
    return v4

    .line 149
    .restart local v0       #absDiffX:I
    .restart local v1       #absDiffY:I
    .restart local v2       #diffX:I
    .restart local v3       #diffY:I
    :cond_43
    if-ge v0, v7, :cond_42

    if-ge v0, v1, :cond_42

    .line 150
    if-gez v3, :cond_66

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$300(Lcom/android/internal/widget/PenGestureView;)I

    move-result v5

    if-lt v1, v5, :cond_66

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 151
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 152
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    const/16 v6, 0x52

    #calls: Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V
    invoke-static {v5, v6}, Lcom/android/internal/widget/PenGestureView;->access$400(Lcom/android/internal/widget/PenGestureView;I)V

    goto :goto_42

    .line 153
    :cond_66
    if-lez v3, :cond_42

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$300(Lcom/android/internal/widget/PenGestureView;)I

    move-result v5

    if-lt v1, v5, :cond_42

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_42

    goto :goto_42

    .line 163
    .end local v0           #absDiffX:I
    .end local v1           #absDiffY:I
    .end local v2           #diffX:I
    .end local v3           #diffY:I
    :cond_79
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v4

    if-eqz v4, :cond_86

    const-string v4, "PenGesture"

    const-string v5, "There is no previous down event."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_86
    const/4 v4, 0x0

    goto :goto_42
.end method
