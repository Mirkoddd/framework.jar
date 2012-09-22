.class public Lcom/android/internal/widget/PenGestureView;
.super Landroid/view/View;
.source "PenGestureView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x64

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PenGesture"


# instance fields
.field private mBootCompleted:Z

.field private mDisplay:Landroid/view/Display;

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMovingSlop:I

.field mPenDoubleTap:Ljava/lang/Runnable;

.field private mPenGestureEventDispatchThread:Ljava/lang/Thread;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTheshold:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    .line 66
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    .line 74
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 170
    new-instance v2, Lcom/android/internal/widget/PenGestureView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PenGestureView$4;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    .line 208
    new-instance v2, Lcom/android/internal/widget/PenGestureView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PenGestureView$5;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 81
    new-instance v2, Lcom/android/internal/widget/PenGestureView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PenGestureView$1;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v2, Landroid/app/Instrumentation;

    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    new-instance v2, Lcom/android/internal/widget/PenGestureView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PenGestureView$2;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 109
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 112
    .local v1, size:Landroid/graphics/Point;
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    .line 114
    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 115
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_7e

    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x4

    :goto_6f
    iput v2, p0, Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I

    .line 119
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/internal/widget/PenGestureView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/PenGestureView$3;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 168
    return-void

    .line 115
    :cond_7e
    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x4

    goto :goto_6f
.end method

.method static synthetic access$000(Lcom/android/internal/widget/PenGestureView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/PenGestureView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/PenGestureView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/PenGestureView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/PenGestureView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/PenGestureView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/PenGestureView;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/PenGestureView;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/widget/PenGestureView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->isSecureUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method private handleBootCompleted()V
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    .line 277
    return-void
.end method

.method private injectionKeyEvent(I)V
    .registers 4
    .parameter "key"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 230
    const-string v0, "PenGesture"

    const-string/jumbo v1, "send interrupt to previous mPenGestureEventDispatchThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 233
    :cond_19
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/widget/PenGestureView$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/PenGestureView$6;-><init>(Lcom/android/internal/widget/PenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 249
    return-void
.end method

.method private isLockScreenShowing()Z
    .registers 4

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_13

    .line 297
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 302
    :goto_a
    return v1

    .line 298
    :catch_b
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v0           #e:Ljava/lang/Exception;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isSecureUnlockEnabled()Z
    .registers 4

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_13

    .line 286
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 291
    :goto_a
    return v1

    .line 287
    :catch_b
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v0           #e:Ljava/lang/Exception;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method public addPenEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const/4 v2, 0x2

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v2, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-ne v1, v2, :cond_33

    .line 254
    sget-boolean v1, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    if-eqz v1, :cond_2a

    const-string v1, "PenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPenEvent ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 256
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_3a

    .line 267
    .end local v0           #action:I
    :cond_33
    :goto_33
    :pswitch_33
    return-void

    .line 263
    .restart local v0       #action:I
    :pswitch_34
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_33

    .line 256
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method public isBootCompleted()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PenGestureView;->addPenEvent(Landroid/view/MotionEvent;)V

    .line 272
    const/4 v0, 0x1

    return v0
.end method
