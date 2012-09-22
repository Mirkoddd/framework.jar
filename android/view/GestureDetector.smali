.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnShapeGestureListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field static final SHAPE_LOG_ON:Z = false

.field private static final SHOW_PRESS:I = 0x1

.field private static final SWEEP_LEFT:I = 0x2

.field private static final SWEEP_RIGHT:I = 0x1

.field static final TAG:Ljava/lang/String; = "GestureDetector"

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I

.field private static velocityType:I


# instance fields
.field AngleTemp:[I

.field InitFlag:I

.field InitX:I

.field InitY:I

.field private LiftTapStep1:Z

.field private LiftTapStep2:Z

.field private LiftTapStep3:Z

.field Nd:[I

.field SSsd:[[I

.field Sad:[[I

.field Sed:[[F

.field Ssd:[[I

.field SvarX:F

.field SvarY:F

.field SweepDirection:I

.field Sxd:[[I

.field Syd:[[I

.field private final TOUCH_DISABLE:I

.field private final TOUCH_ENABLE:I

.field TouchCnt:I

.field private bHandTouchCancel:Z

.field private bInitHandTouch:Z

.field private bLiftTapCancel:Z

.field dist1:I

.field g_Diffx:I

.field g_InitTwistAngle:I

.field g_MaxTouchCnt:I

.field g_PreFilteredAngle:I

.field g_RotatedAngle:I

.field g_SDCnt:I

.field g_SmeanX:I

.field g_SmeanXpre:I

.field g_SumSampDiffAngle:I

.field g_SweepReverseSum:I

.field g_TwistCnt:I

.field g_bInitTwist:Z

.field private g_bPalmRejection:Z

.field g_bSizeDecreased:Z

.field g_bSweepReady:Z

.field g_bVarXBig:Z

.field g_maxSS1:I

.field g_maxSS2:I

.field g_preSmeanX:I

.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mBiggerTouchSlop:I

.field private mBiggerTouchSlopSquare:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mHandTouched:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreMultitouch:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLiftTapDown:Z

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPalmDown:Z

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

.field private mStillDown:Z

.field private mSweepDown:Z

.field private mTouchSlopSquare:I

.field private mTwistCancel:Z

.field private mTwistDown:Z

.field mTwistInitTime:J

.field private mTwistStart:Z

.field private mTwistTempDown:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mbAngleRotateStart:Z

.field medFlag:Z

.field medSize:I

.field medX:I

.field medY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 249
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 250
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 251
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 1286
    const/4 v0, 0x0

    sput v0, Landroid/view/GestureDetector;->velocityType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 464
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 6
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 479
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 481
    return-void

    .line 479
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .registers 12
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "ignoreMultitouch"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 498
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/16 v0, 0x14

    iput v0, p0, Landroid/view/GestureDetector;->mBiggerTouchSlop:I

    .line 242
    iget v0, p0, Landroid/view/GestureDetector;->mBiggerTouchSlop:I

    iget v1, p0, Landroid/view/GestureDetector;->mBiggerTouchSlop:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    .line 273
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 274
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 275
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mTwistTempDown:Z

    .line 276
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mTwistStart:Z

    .line 277
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mTwistCancel:Z

    .line 278
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mSweepDown:Z

    .line 280
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 281
    iput-boolean v2, p0, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 282
    iput-boolean v4, p0, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 283
    iput-boolean v4, p0, Landroid/view/GestureDetector;->mbAngleRotateStart:Z

    .line 285
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 286
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 287
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep3:Z

    .line 288
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 289
    iput-boolean v2, p0, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 291
    iput-boolean v2, p0, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    .line 293
    iput v4, p0, Landroid/view/GestureDetector;->TOUCH_DISABLE:I

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/GestureDetector;->TOUCH_ENABLE:I

    .line 296
    filled-new-array {v5, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector;->Sxd:[[I

    .line 297
    filled-new-array {v5, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector;->Syd:[[I

    .line 298
    filled-new-array {v5, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector;->Ssd:[[I

    .line 299
    filled-new-array {v5, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sed:[[F

    .line 300
    filled-new-array {v5, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector;->Sad:[[I

    .line 301
    filled-new-array {v5, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector;->SSsd:[[I

    .line 302
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/GestureDetector;->Nd:[I

    .line 303
    iput v6, p0, Landroid/view/GestureDetector;->SvarX:F

    .line 304
    iput v6, p0, Landroid/view/GestureDetector;->SvarY:F

    .line 306
    iput v2, p0, Landroid/view/GestureDetector;->TouchCnt:I

    .line 307
    iput v2, p0, Landroid/view/GestureDetector;->InitFlag:I

    .line 310
    iput v2, p0, Landroid/view/GestureDetector;->dist1:I

    .line 311
    iput v2, p0, Landroid/view/GestureDetector;->g_InitTwistAngle:I

    .line 312
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector;->AngleTemp:[I

    .line 313
    iput v2, p0, Landroid/view/GestureDetector;->g_TwistCnt:I

    .line 314
    iput v2, p0, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    .line 315
    iput v2, p0, Landroid/view/GestureDetector;->g_RotatedAngle:I

    .line 316
    iput-boolean v4, p0, Landroid/view/GestureDetector;->g_bInitTwist:Z

    .line 317
    iput-boolean v4, p0, Landroid/view/GestureDetector;->g_bSweepReady:Z

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/GestureDetector;->mTwistInitTime:J

    .line 319
    iput v2, p0, Landroid/view/GestureDetector;->g_PreFilteredAngle:I

    .line 320
    iput v2, p0, Landroid/view/GestureDetector;->g_SumSampDiffAngle:I

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/GestureDetector;->g_SDCnt:I

    .line 325
    iput v2, p0, Landroid/view/GestureDetector;->SweepDirection:I

    .line 326
    iput v2, p0, Landroid/view/GestureDetector;->InitX:I

    .line 327
    iput v2, p0, Landroid/view/GestureDetector;->InitY:I

    .line 328
    iput v2, p0, Landroid/view/GestureDetector;->g_SmeanXpre:I

    .line 329
    iput v2, p0, Landroid/view/GestureDetector;->g_SmeanX:I

    .line 330
    iput v2, p0, Landroid/view/GestureDetector;->g_SweepReverseSum:I

    .line 331
    iput v2, p0, Landroid/view/GestureDetector;->g_Diffx:I

    .line 332
    iput-boolean v2, p0, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    .line 333
    iput-boolean v2, p0, Landroid/view/GestureDetector;->g_bVarXBig:Z

    .line 334
    iput v2, p0, Landroid/view/GestureDetector;->g_maxSS1:I

    .line 335
    iput v2, p0, Landroid/view/GestureDetector;->g_maxSS2:I

    .line 336
    iput v2, p0, Landroid/view/GestureDetector;->g_preSmeanX:I

    .line 343
    iput v2, p0, Landroid/view/GestureDetector;->medX:I

    .line 344
    iput v2, p0, Landroid/view/GestureDetector;->medY:I

    .line 345
    iput v2, p0, Landroid/view/GestureDetector;->medSize:I

    .line 346
    iput-boolean v4, p0, Landroid/view/GestureDetector;->medFlag:Z

    .line 376
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_fc

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_e2
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 499
    if-eqz p3, :cond_fe

    .line 500
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 504
    :goto_ed
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 519
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_f8

    .line 520
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 522
    :cond_f8
    invoke-direct {p0, p1, p4}, Landroid/view/GestureDetector;->init(Landroid/content/Context;Z)V

    .line 523
    return-void

    .line 376
    .restart local p2
    :cond_fc
    const/4 v0, 0x0

    goto :goto_e2

    .line 502
    :cond_fe
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_ed
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 449
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 4
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 431
    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1249
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1250
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1251
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1252
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1254
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1255
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1256
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1257
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1258
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_29

    .line 1259
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1261
    :cond_29
    return-void
.end method

.method private dispatchLongPress()V
    .registers 3

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1280
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1281
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1282
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .registers 10
    .parameter "context"
    .parameter "ignoreMultitouch"

    .prologue
    .line 526
    iget-object v5, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v5, :cond_c

    .line 527
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "OnGestureListener must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 529
    :cond_c
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 530
    iput-boolean p2, p0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    .line 534
    if-nez p1, :cond_37

    .line 536
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    .line 537
    .local v4, touchSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v2

    .line 539
    .local v2, doubleTapSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 540
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 554
    :goto_27
    mul-int v5, v4, v4

    iput v5, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 555
    mul-int v5, v2, v2

    iput v5, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 558
    iget v5, p0, Landroid/view/GestureDetector;->mBiggerTouchSlop:I

    iget v6, p0, Landroid/view/GestureDetector;->mBiggerTouchSlop:I

    mul-int/2addr v5, v6

    iput v5, p0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    .line 560
    return-void

    .line 542
    .end local v2           #doubleTapSlop:I
    .end local v4           #touchSlop:I
    :cond_37
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 545
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 546
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 547
    .local v1, density:F
    iget v5, p0, Landroid/view/GestureDetector;->mBiggerTouchSlop:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/GestureDetector;->mBiggerTouchSlop:I

    .line 549
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 550
    .restart local v4       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 551
    .restart local v2       #doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 552
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_27
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v2, 0x0

    .line 1265
    iget-boolean v3, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_6

    .line 1275
    :cond_5
    :goto_5
    return v2

    .line 1269
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_5

    .line 1273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 1274
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 1275
    .local v1, deltaY:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method public getVelocityType(Landroid/view/View;)I
    .registers 3
    .parameter "view"

    .prologue
    .line 1293
    if-eqz p1, :cond_8

    .line 1294
    invoke-virtual {p1}, Landroid/view/View;->getVelocityPolynomialType()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->velocityType:I

    .line 1297
    :cond_8
    sget v0, Landroid/view/GestureDetector;->velocityType:I

    return v0
.end method

.method public isLongpressEnabled()Z
    .registers 2

    .prologue
    .line 590
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 27
    .parameter "ev"

    .prologue
    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 1079
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1080
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1081
    .local v18, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1083
    .local v17, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_37

    .line 1084
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1086
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1088
    const/4 v10, 0x0

    .line 1090
    .local v10, handled:Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_472

    .line 1242
    :cond_4c
    :goto_4c
    :pswitch_4c
    if-nez v10, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_67

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1245
    :cond_67
    return v10

    .line 1092
    :pswitch_68
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4c

    .line 1094
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto :goto_4c

    .line 1100
    :pswitch_74
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4c

    .line 1101
    const v19, 0xff00

    and-int v19, v19, v4

    shr-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_be

    const/4 v11, 0x1

    .line 1103
    .local v11, index:I
    :goto_92
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1104
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 1106
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4c

    .line 1101
    .end local v11           #index:I
    :cond_be
    const/4 v11, 0x0

    goto :goto_92

    .line 1111
    :pswitch_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_137

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    .line 1113
    .local v9, hadTapMessage:Z
    if-eqz v9, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1114
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e8

    if-eqz v9, :cond_1e8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v19

    if-eqz v19, :cond_1e8

    .line 1117
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 1128
    .end local v9           #hadTapMessage:Z
    :cond_137
    :goto_137
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1129
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_154

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 1133
    :cond_154
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 1134
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1135
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1136
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1137
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1139
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b8

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    sget v23, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1144
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 1146
    goto/16 :goto_4c

    .line 1124
    .restart local v9       #hadTapMessage:Z
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    sget v21, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_137

    .line 1149
    .end local v9           #hadTapMessage:Z
    :pswitch_1fc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-nez v19, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_218

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4c

    .line 1152
    :cond_218
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v12, v19, v17

    .line 1153
    .local v12, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v13, v19, v18

    .line 1154
    .local v13, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_242

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    goto/16 :goto_4c

    .line 1157
    :cond_242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2d7

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 1159
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v7, v0

    .line 1160
    .local v7, deltaY:I
    mul-int v19, v6, v6

    mul-int v20, v7, v7

    add-int v8, v19, v20

    .line 1161
    .local v8, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v8, v0, :cond_2c3

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v12, v13}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    .line 1163
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1164
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1165
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1170
    :cond_2c3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v8, v0, :cond_4c

    .line 1171
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_4c

    .line 1173
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #distance:I
    :cond_2d7
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-gez v19, :cond_2eb

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_4c

    .line 1174
    :cond_2eb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v12, v13}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    .line 1175
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1176
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    goto/16 :goto_4c

    .line 1181
    .end local v12           #scrollX:F
    .end local v13           #scrollY:F
    :pswitch_30f
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1182
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1183
    .local v5, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_379

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 1225
    :cond_333
    :goto_333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_344

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 1229
    :cond_344
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 1231
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1232
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4c

    .line 1186
    :cond_379
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_395

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1188
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_333

    .line 1189
    :cond_395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3ac

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_333

    .line 1194
    :cond_3ac
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1196
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    sget v19, Landroid/view/GestureDetector;->velocityType:I

    if-nez v19, :cond_410

    .line 1198
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1200
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    .line 1201
    .local v16, velocityY:F
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 1203
    .local v15, velocityX:F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-gtz v19, :cond_3f6

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_333

    .line 1205
    :cond_3f6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v15, v3}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    goto/16 :goto_333

    .line 1210
    .end local v15           #velocityX:F
    .end local v16           #velocityY:F
    :cond_410
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    .line 1211
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v15

    .line 1212
    .restart local v15       #velocityX:F
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getMonomialYVelocity()F

    move-result v16

    .line 1214
    .restart local v16       #velocityY:F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-gtz v19, :cond_452

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_333

    .line 1216
    :cond_452
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v15, v3}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    goto/16 :goto_333

    .line 1238
    .end local v5           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:F
    .end local v16           #velocityY:F
    :pswitch_46c
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_4c

    .line 1090
    nop

    :pswitch_data_472
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_30f
        :pswitch_1fc
        :pswitch_46c
        :pswitch_4c
        :pswitch_68
        :pswitch_74
    .end packed-switch
.end method

.method public onTouchEvent_ex(Landroid/view/MotionEvent;)Z
    .registers 36
    .parameter "ev"

    .prologue
    .line 604
    const/16 v20, 0x0

    .line 606
    .local v20, handled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    .line 607
    .local v19, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 608
    .local v6, N:I
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 611
    .local v18, TouchId:I
    const/4 v15, 0x0

    .line 612
    .local v15, SsumX:I
    const/16 v16, 0x0

    .line 613
    .local v16, SsumY:I
    const/4 v14, 0x0

    .line 614
    .local v14, SsumSize:I
    const/4 v13, 0x0

    .line 615
    .local v13, SsumEccen:F
    const/4 v8, 0x0

    .line 616
    .local v8, SSsumSize:I
    const/4 v11, 0x0

    .line 617
    .local v11, SmeanX:I
    const/4 v12, 0x0

    .line 618
    .local v12, SmeanY:I
    const/4 v10, 0x0

    .line 621
    .local v10, SmeanSumSize:I
    const/4 v4, 0x0

    .line 622
    .local v4, DiffAngle:I
    const/4 v5, 0x0

    .line 623
    .local v5, FilteredAngle:I
    const-wide/16 v25, 0x0

    .line 624
    .local v25, tDiffTime:J
    const/4 v9, 0x0

    .line 626
    .local v9, SampDiffAngle:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_24
    move/from16 v0, v22

    if-ge v0, v6, :cond_b8

    .line 627
    const/16 v21, 0x1

    .local v21, i:I
    :goto_2a
    if-ltz v21, :cond_b4

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    add-int/lit8 v28, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    aget v29, v29, v21

    aput v29, v27, v28

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    add-int/lit8 v28, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    aget v29, v29, v21

    aput v29, v27, v28

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    add-int/lit8 v28, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    aget v29, v29, v21

    aput v29, v27, v28

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    add-int/lit8 v28, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    aget v29, v29, v21

    aput v29, v27, v28

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    add-int/lit8 v28, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    aget v29, v29, v21

    aput v29, v27, v28

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    add-int/lit8 v28, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[I

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    aget v29, v29, v21

    aput v29, v27, v28

    .line 627
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_2a

    .line 626
    :cond_b4
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_24

    .line 637
    .end local v21           #i:I
    :cond_b8
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_ba
    move/from16 v0, v21

    if-ge v0, v6, :cond_157

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    aput v29, v27, v28

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    aput v29, v27, v28

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v29

    const/high16 v30, 0x41f0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    aput v29, v27, v28

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAngle(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    aput v29, v27, v28

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v29

    aput v29, v27, v28

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSumSize(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    aput v29, v27, v28

    .line 637
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_ba

    .line 646
    :cond_157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    aput v29, v27, v28

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v6, v27, v28

    .line 649
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->TouchCnt:I

    .line 651
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_201

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    aput v29, v27, v28

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    aput v29, v27, v28

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x1

    aget v29, v29, v30

    aput v29, v27, v28

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x1

    aget v29, v29, v30

    aput v29, v27, v28

    .line 658
    :cond_201
    const/16 v21, 0x0

    :goto_203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_25c

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    aget v27, v27, v28

    add-int v15, v15, v27

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    aget v27, v27, v28

    add-int v16, v16, v27

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    aget v27, v27, v28

    add-int v14, v14, v27

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    aget v27, v27, v28

    add-float v13, v13, v27

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    aget v27, v27, v28

    add-int v8, v8, v27

    .line 658
    add-int/lit8 v21, v21, 0x1

    goto :goto_203

    .line 665
    :cond_25c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    div-int v11, v15, v27

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    div-int v12, v16, v27

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    div-int v10, v8, v27

    .line 677
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x1

    aget v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v30, v30, v31

    const/16 v31, 0x2

    aget v30, v30, v31

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v30, v30, v31

    const/16 v31, 0x1

    aget v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    const/16 v32, 0x2

    aget v31, v31, v32

    sub-int v30, v30, v31

    mul-int v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v30, v30, v31

    const/16 v31, 0x1

    aget v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    const/16 v32, 0x2

    aget v31, v31, v32

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    const/16 v32, 0x1

    aget v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v32, v32, v33

    const/16 v33, 0x2

    aget v32, v32, v33

    sub-int v31, v31, v32

    mul-int v30, v30, v31

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v29

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->dist1:I

    .line 679
    if-nez v19, :cond_353

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitX:I

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitY:I

    .line 682
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 684
    :cond_353
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SmeanXpre:I

    .line 685
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/GestureDetector;->g_SmeanX:I

    .line 687
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarX:F

    .line 688
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarY:F

    .line 690
    const/16 v21, 0x0

    :goto_375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_3fd

    .line 691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v28, v0

    aget-object v28, v28, v21

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v28, v28, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v29, v0

    aget-object v29, v29, v21

    const/16 v30, 0x0

    aget v29, v29, v30

    sub-int v29, v29, v11

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarX:F

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarY:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v28, v0

    aget-object v28, v28, v21

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v28, v28, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v29, v0

    aget-object v29, v29, v21

    const/16 v30, 0x0

    aget v29, v29, v30

    sub-int v29, v29, v12

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarY:F

    .line 690
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_375

    .line 696
    :cond_3fd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_47f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    const/high16 v28, 0x40e0

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_47f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x19

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_47f

    .line 697
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    .line 698
    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[Surface Touch Event] Palm Rejection 1 - size:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " eccen:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_47f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_58b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    const/high16 v28, 0x40e0

    cmpl-float v27, v27, v28

    if-gez v27, :cond_4b9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    const/high16 v28, 0x40e0

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_58b

    :cond_4b9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v27, v0

    const/high16 v28, 0x4348

    cmpg-float v27, v27, v28

    if-gez v27, :cond_58b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    const/16 v28, 0x1e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_58b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    const/16 v28, 0x1e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_58b

    .line 701
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    .line 702
    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[Surface Touch Event] Palm Rejection 2 -  a[0]:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " a[1]:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " e[0]:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " e[1]:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " eccen:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " SvarX:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_58b
    const/16 v21, 0x0

    :goto_58d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_5e0

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v21

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x1e

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_5dd

    .line 706
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    .line 707
    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[Surface Touch Event] Palm Rejection 3 - size:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v29, v0

    aget-object v29, v29, v21

    const/16 v30, 0x0

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_5dd
    add-int/lit8 v21, v21, 0x1

    goto :goto_58d

    .line 710
    :cond_5e0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5f9

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalmRejection(I)Z

    .line 714
    :cond_5f9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v27, v0

    if-nez v27, :cond_a68

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v27, v0

    if-nez v27, :cond_a68

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_647

    const/16 v27, 0x3c

    move/from16 v0, v27

    if-gt v10, v0, :cond_627

    const/16 v27, 0x3c

    move/from16 v0, v27

    if-le v14, v0, :cond_647

    .line 717
    :cond_627
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v27, v0

    const/high16 v28, 0x4396

    cmpl-float v27, v27, v28

    if-lez v27, :cond_647

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarY:F

    move/from16 v27, v0

    const/high16 v28, 0x4396

    cmpl-float v27, v27, v28

    if-lez v27, :cond_647

    .line 719
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 723
    :cond_647
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_66a

    .line 724
    const-string v27, "GestureDetector"

    const-string v28, "[Surface Touch Event] Palm touch"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    move-result v20

    .line 732
    :cond_66a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS1:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v14, :cond_678

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->g_maxSS1:I

    .line 733
    :cond_678
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS2:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_686

    move-object/from16 v0, p0

    iput v10, v0, Landroid/view/GestureDetector;->g_maxSS2:I

    .line 735
    :cond_686
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v27

    const/high16 v28, 0x437f

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3f8999999999999aL

    div-double v27, v27, v29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v29

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    const-wide/high16 v29, 0x403e

    mul-double v27, v27, v29

    const-wide v29, 0x403aa8f5c28f5c29L

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v7, v0

    .line 737
    .local v7, Pressure:F
    const/high16 v27, 0x4348

    cmpl-float v27, v7, v27

    if-lez v27, :cond_ce1

    .line 738
    const/16 v17, 0x28

    .line 745
    .local v17, SweepSumSizeTH:I
    :goto_6bb
    if-nez v19, :cond_6c1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/GestureDetector;->g_preSmeanX:I

    .line 746
    :cond_6c1
    const/16 v27, 0x2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_6e3

    .line 747
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_Diffx:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_preSmeanX:I

    move/from16 v28, v0

    sub-int v28, v11, v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_Diffx:I

    .line 748
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/GestureDetector;->g_preSmeanX:I

    .line 751
    :cond_6e3
    const/high16 v27, 0x4000

    cmpl-float v27, v13, v27

    if-ltz v27, :cond_733

    move/from16 v0, v17

    if-gt v10, v0, :cond_6f1

    move/from16 v0, v17

    if-le v14, v0, :cond_733

    .line 752
    :cond_6f1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:I

    move/from16 v27, v0

    const/16 v28, 0x258

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_70d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:I

    move/from16 v27, v0

    const/16 v28, 0xc8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_733

    .line 753
    :cond_70d
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    .line 754
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:I

    move/from16 v27, v0

    const/16 v28, 0x258

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_cef

    .line 756
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SweepDirection:I

    .line 763
    :cond_733
    :goto_733
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_777

    .line 764
    const/16 v27, 0x14

    move/from16 v0, v27

    if-ge v10, v0, :cond_777

    const/16 v27, 0x14

    move/from16 v0, v27

    if-ge v14, v0, :cond_777

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepDown:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_777

    .line 765
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    .line 766
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SDCnt:I

    move/from16 v27, v0

    if-gez v27, :cond_777

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SDCnt:I

    .line 770
    :cond_777
    if-eqz v19, :cond_7db

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7db

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepDown:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7db

    .line 771
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d07

    .line 772
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    if-lez v27, :cond_7db

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SweepReverseSum:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SweepReverseSum:I

    .line 782
    :cond_7db
    :goto_7db
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v27, v0

    const/high16 v28, 0x43c8

    cmpl-float v27, v27, v28

    if-lez v27, :cond_7ef

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bVarXBig:Z

    .line 785
    :cond_7ef
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_815

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    .line 787
    :cond_815
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistCancel:Z

    move/from16 v27, v0

    if-nez v27, :cond_a68

    .line 788
    const/16 v27, 0xe

    move/from16 v0, v27

    if-lt v10, v0, :cond_845

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_845

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-gtz v27, :cond_84d

    :cond_845
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistStart:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a07

    .line 789
    :cond_84d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 790
    .local v23, tCurTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bInitTwist:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_883

    .line 791
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bInitTwist:Z

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_InitTwistAngle:I

    .line 793
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistStart:Z

    .line 796
    :cond_883
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:I

    move/from16 v27, v0

    const/16 v28, 0x5a

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d77

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    if-lez v27, :cond_d47

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    aput v29, v27, v28

    .line 822
    :cond_8b9
    :goto_8b9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_TwistCnt:I

    move/from16 v27, v0

    if-nez v27, :cond_e98

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v5, v27, v28

    .line 830
    :goto_8cb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    aput v29, v27, v28

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    aput v29, v27, v28

    .line 832
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_TwistCnt:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_TwistCnt:I

    .line 834
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:I

    move/from16 v27, v0

    sub-int v4, v27, v5

    .line 835
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_PreFilteredAngle:I

    move/from16 v27, v0

    sub-int v9, v5, v27

    .line 837
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_TwistCnt:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_ee6

    .line 838
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SumSampDiffAngle:I

    .line 843
    :goto_927
    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/GestureDetector;->g_PreFilteredAngle:I

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SumSampDiffAngle:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_95b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mbAngleRotateStart:Z

    move/from16 v27, v0

    if-eqz v27, :cond_95b

    .line 847
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SumSampDiffAngle:I

    .line 848
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/GestureDetector;->mTwistInitTime:J

    .line 849
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mbAngleRotateStart:Z

    .line 852
    :cond_95b
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/GestureDetector;->mTwistInitTime:J

    move-wide/from16 v27, v0

    sub-long v25, v23, v27

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SumSampDiffAngle:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    const/16 v28, 0x16

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_99d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistTempDown:Z

    move/from16 v27, v0

    if-nez v27, :cond_99d

    const-wide/16 v27, 0x1f4

    cmp-long v27, v25, v27

    if-gez v27, :cond_99d

    const/16 v27, 0xa

    move/from16 v0, v27

    if-le v10, v0, :cond_99d

    .line 855
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistTempDown:Z

    .line 856
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SumSampDiffAngle:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_RotatedAngle:I

    .line 859
    :cond_99d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistStart:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9c3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistTempDown:Z

    move/from16 v27, v0

    if-nez v27, :cond_9c3

    .line 860
    const/16 v27, 0xa

    move/from16 v0, v27

    if-gt v10, v0, :cond_9c3

    .line 861
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 862
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistCancel:Z

    .line 866
    :cond_9c3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistTempDown:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9e1

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v27, v0

    const/16 v28, 0xf

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_ef6

    .line 868
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 874
    :cond_9e1
    :goto_9e1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistStart:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a07

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:I

    move/from16 v27, v0

    const/16 v28, 0x78

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_a07

    .line 876
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 877
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistCancel:Z

    .line 882
    .end local v23           #tCurTime:J
    :cond_a07
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a68

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_RotatedAngle:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v20

    .line 884
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_RotatedAngle:I

    move/from16 v27, v0

    if-gez v27, :cond_f08

    .line 885
    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[Surface Touch Event] Twist - Right, DiffAngle:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_RotatedAngle:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " dist1:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v7           #Pressure:F
    .end local v17           #SweepSumSizeTH:I
    :cond_a68
    :goto_a68
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v27, v0

    if-nez v27, :cond_af2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v27, v0

    if-nez v27, :cond_af2

    .line 896
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    move/from16 v27, v0

    if-nez v27, :cond_a94

    .line 898
    const/16 v27, 0x3c

    move/from16 v0, v27

    if-gt v14, v0, :cond_a8c

    const/16 v27, 0x3c

    move/from16 v0, v27

    if-le v10, v0, :cond_a94

    .line 900
    :cond_a8c
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 904
    :cond_a94
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarY:F

    move/from16 v28, v0

    add-float v27, v27, v28

    const v28, 0x453b8000

    cmpl-float v27, v27, v28

    if-lez v27, :cond_ab9

    .line 906
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 907
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 910
    :cond_ab9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mHandTouched:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_af2

    .line 912
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bInitHandTouch:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_af2

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onHandTouched(Landroid/view/MotionEvent;)Z

    move-result v20

    .line 915
    const-string v27, "GestureDetector"

    const-string v28, "[Surface Touch Event] HandTouched"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 922
    :cond_af2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mLiftTapDown:Z

    move/from16 v27, v0

    if-nez v27, :cond_cd5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    move/from16 v27, v0

    if-nez v27, :cond_cd5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v27, v0

    if-nez v27, :cond_cd5

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x1f4

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_b36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x3e8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_b3e

    .line 926
    :cond_b36
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 929
    :cond_b3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    move/from16 v27, v0

    if-nez v27, :cond_ba6

    .line 931
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:I

    move/from16 v27, v0

    const/16 v28, 0x2bc

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_ba6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:I

    move/from16 v27, v0

    const/16 v28, 0x44c

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_ba6

    .line 933
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v27, v27, v28

    const/16 v28, 0x32

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_ba6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v27, v27, v28

    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_ba6

    .line 935
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 941
    :cond_ba6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c56

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    move/from16 v27, v0

    if-nez v27, :cond_c56

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget v28, v28, v29

    sub-int v27, v27, v28

    if-gez v27, :cond_bfc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget v28, v28, v29

    sub-int v27, v27, v28

    if-ltz v27, :cond_c56

    .line 945
    :cond_bfc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->medFlag:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c4e

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medX:I

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medY:I

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x2

    aget v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medSize:I

    .line 950
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->medFlag:Z

    .line 953
    :cond_c4e
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 957
    :cond_c56
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_cd5

    .line 959
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    sub-int v28, v28, v29

    add-int v27, v27, v28

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_cd5

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medSize:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget v28, v28, v29

    sub-int v27, v27, v28

    const/16 v28, -0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_cd5

    .line 963
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 964
    const-string v27, "GestureDetector"

    const-string v28, "[Surface Touch Event] Lift tap Event"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onLiftTap(Landroid/view/MotionEvent;)Z

    move-result v20

    .line 971
    :cond_cd5
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_1252

    .line 1070
    :cond_cde
    :goto_cde
    const/16 v27, 0x0

    return v27

    .line 739
    .restart local v7       #Pressure:F
    :cond_ce1
    const/high16 v27, 0x42c8

    cmpl-float v27, v7, v27

    if-lez v27, :cond_ceb

    .line 740
    const/16 v17, 0x23

    .restart local v17       #SweepSumSizeTH:I
    goto/16 :goto_6bb

    .line 742
    .end local v17           #SweepSumSizeTH:I
    :cond_ceb
    const/16 v17, 0x1e

    .restart local v17       #SweepSumSizeTH:I
    goto/16 :goto_6bb

    .line 757
    :cond_cef
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:I

    move/from16 v27, v0

    const/16 v28, 0xc8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_733

    .line 758
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SweepDirection:I

    goto/16 :goto_733

    .line 775
    :cond_d07
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7db

    .line 776
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    if-gez v27, :cond_7db

    .line 777
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SweepReverseSum:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SweepReverseSum:I

    goto/16 :goto_7db

    .line 799
    .restart local v23       #tCurTime:J
    :cond_d47
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    if-gez v27, :cond_8b9

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v0, v29

    add-int/lit16 v0, v0, 0xb4

    move/from16 v29, v0

    aput v29, v27, v28

    goto/16 :goto_8b9

    .line 802
    :cond_d77
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:I

    move/from16 v27, v0

    if-nez v27, :cond_dd3

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    if-lez v27, :cond_da9

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    aput v29, v27, v28

    goto/16 :goto_8b9

    .line 805
    :cond_da9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    if-gez v27, :cond_8b9

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    aput v29, v27, v28

    goto/16 :goto_8b9

    .line 808
    :cond_dd3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:I

    move/from16 v27, v0

    if-lez v27, :cond_e33

    .line 809
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v27, v27, v28

    const/16 v28, 0x5a

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e13

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    aput v29, v27, v28

    goto/16 :goto_8b9

    .line 812
    :cond_e13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v0, v29

    add-int/lit16 v0, v0, 0xb4

    move/from16 v29, v0

    aput v29, v27, v28

    goto/16 :goto_8b9

    .line 814
    :cond_e33
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:I

    move/from16 v27, v0

    if-gez v27, :cond_8b9

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v27, v27, v28

    const/16 v28, -0x5a

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e73

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    aput v29, v27, v28

    goto/16 :goto_8b9

    .line 818
    :cond_e73
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v0, v29

    rsub-int v0, v0, 0xb4

    move/from16 v29, v0

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    aput v29, v27, v28

    goto/16 :goto_8b9

    .line 824
    :cond_e98
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_TwistCnt:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_ec0

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    add-int v27, v27, v28

    div-int/lit8 v5, v27, 0x2

    goto/16 :goto_8cb

    .line 827
    :cond_ec0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v28, v0

    const/16 v29, 0x2

    aget v28, v28, v29

    add-int v27, v27, v28

    div-int/lit8 v5, v27, 0x3

    goto/16 :goto_8cb

    .line 840
    :cond_ee6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SumSampDiffAngle:I

    move/from16 v27, v0

    add-int v27, v27, v9

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SumSampDiffAngle:I

    goto/16 :goto_927

    .line 869
    :cond_ef6
    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_9e1

    .line 870
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    goto/16 :goto_9e1

    .line 887
    .end local v23           #tCurTime:J
    :cond_f08
    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[Surface Touch Event] Twist - Left, DiffAngle:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_RotatedAngle:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " dist1:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a68

    .line 973
    .end local v7           #Pressure:F
    .end local v17           #SweepSumSizeTH:I
    :pswitch_f38
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_cde

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_cde

    goto/16 :goto_cde

    .line 980
    :pswitch_f56
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f78

    .line 981
    const-string v27, "GestureDetector"

    const-string v28, "[Surface Touch Event] Palm touch up"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    .line 985
    :cond_f78
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_fa4

    .line 986
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SDCnt:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    const/16 v28, 0xa

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_fa4

    .line 987
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    .line 991
    :cond_fa4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SweepReverseSum:I

    move/from16 v27, v0

    const/16 v28, 0x32

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_fe0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_fe0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_Diffx:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    const/16 v28, 0x15e

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_fe0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bVarXBig:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_fe8

    .line 992
    :cond_fe0
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    .line 995
    :cond_fe8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepDown:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1044

    .line 996
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1097

    .line 997
    const/16 v27, 0xfa

    move/from16 v0, v27

    if-ge v11, v0, :cond_1044

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    move-result v20

    .line 999
    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[Surface Touch Event] Palm Sweep - RIGHT, ss1:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ss2:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS2:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_1044
    :goto_1044
    const/16 v22, 0x0

    :goto_1046
    const/16 v27, 0xa

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_10eb

    .line 1011
    const/16 v21, 0x0

    :goto_1050
    const/16 v27, 0x3

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_10e7

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    const/16 v28, 0x0

    aput v28, v27, v21

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    const/16 v28, 0x0

    aput v28, v27, v21

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    const/16 v28, 0x0

    aput v28, v27, v21

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    const/16 v28, 0x0

    aput v28, v27, v21

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v22

    const/16 v28, 0x0

    aput v28, v27, v21

    .line 1011
    add-int/lit8 v21, v21, 0x1

    goto :goto_1050

    .line 1001
    :cond_1097
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1044

    .line 1002
    const/16 v27, 0x226

    move/from16 v0, v27

    if-le v11, v0, :cond_1044

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-interface/range {v27 .. v28}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    move-result v20

    .line 1004
    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[Surface Touch Event] Palm Sweep - LEFT, ss1:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ss2:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS2:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1044

    .line 1010
    :cond_10e7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1046

    .line 1020
    :cond_10eb
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->TouchCnt:I

    .line 1021
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 1022
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 1023
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistStart:Z

    .line 1024
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistTempDown:Z

    .line 1025
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistCancel:Z

    .line 1026
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    .line 1027
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mbAngleRotateStart:Z

    .line 1029
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->dist1:I

    .line 1031
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medX:I

    .line 1032
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medY:I

    .line 1033
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medSize:I

    .line 1034
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->medFlag:Z

    .line 1035
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 1036
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 1037
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep3:Z

    .line 1038
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 1039
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 1040
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 1041
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 1042
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 1043
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_InitTwistAngle:I

    .line 1044
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bInitTwist:Z

    .line 1045
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSweepReady:Z

    .line 1047
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SmeanXpre:I

    .line 1048
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SmeanX:I

    .line 1049
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    .line 1050
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SDCnt:I

    .line 1051
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SweepReverseSum:I

    .line 1052
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SweepDirection:I

    .line 1053
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_Diffx:I

    .line 1054
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_TwistCnt:I

    .line 1055
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_maxSS1:I

    .line 1056
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_maxSS2:I

    .line 1057
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_preSmeanX:I

    .line 1058
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bVarXBig:Z

    .line 1059
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    .line 1060
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    .line 1061
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_RotatedAngle:I

    .line 1062
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/GestureDetector;->mTwistInitTime:J

    .line 1063
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_PreFilteredAngle:I

    .line 1064
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SumSampDiffAngle:I

    .line 1066
    const/16 v21, 0x0

    :goto_123d
    const/16 v27, 0x3

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_cde

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v28, v27, v21

    .line 1066
    add-int/lit8 v21, v21, 0x1

    goto :goto_123d

    .line 971
    :pswitch_data_1252
    .packed-switch 0x1
        :pswitch_f56
        :pswitch_f38
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2
    .parameter "isLongpressEnabled"

    .prologue
    .line 583
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 584
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2
    .parameter "onDoubleTapListener"

    .prologue
    .line 570
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 571
    return-void
.end method

.method public setVelocityType(Landroid/view/View;I)V
    .registers 3
    .parameter "view"
    .parameter "type"

    .prologue
    .line 1305
    if-eqz p1, :cond_7

    .line 1306
    sput p2, Landroid/view/GestureDetector;->velocityType:I

    .line 1307
    invoke-virtual {p1, p2}, Landroid/view/View;->setVelocityPolynomialType(I)V

    .line 1310
    :cond_7
    return-void
.end method
