.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND:Ljava/lang/String; = "//system/media/audio/ui/PowerOff.wav"

.field private static PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String; = null

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final RADIO_SHUTDOWN_PROPERTY:Ljava/lang/String; = "sys.radio.shutdown"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mContext:Landroid/content/Context;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootResult:Z

.field private static mp:Landroid/media/MediaPlayer;

.field private static sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

.field private static sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsSamsungAnimation:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 105
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    .line 106
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 107
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 108
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    .line 109
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 121
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 122
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    .line 133
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 147
    const-string v0, "/sys/devices/virtual/sec/ts"

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public static IsShutDownConfirming()Z
    .registers 2

    .prologue
    .line 981
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 982
    :try_start_3
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    monitor-exit v1

    return v0

    .line 983
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static IsShutDownStarted()Z
    .registers 3

    .prologue
    .line 969
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 970
    :try_start_3
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_12

    .line 971
    const-string v0, "ShutdownThread"

    const-string/jumbo v2, "shut down already running , return true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v0, 0x1

    monitor-exit v1

    .line 975
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_11

    .line 977
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$1000()Landroid/media/MediaPlayer;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    return p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$800()Ljava/util/concurrent/Semaphore;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/concurrent/Semaphore;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private static beginShutdownSamsungSequence(Landroid/content/Context;)V
    .registers 18
    .parameter "context"

    .prologue
    .line 273
    sget-object v14, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v14

    .line 274
    :try_start_3
    sget-boolean v13, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v13, :cond_10

    .line 275
    const-string v13, "ShutdownThread"

    const-string v15, "Request to shutdown already running, returning."

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    monitor-exit v14

    .line 373
    :goto_f
    return-void

    .line 278
    :cond_10
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 279
    monitor-exit v14
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_13d

    .line 281
    const-string/jumbo v13, "shutdownlogger"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v7

    .line 282
    .local v7, service:Landroid/app/IShutdownLogger;
    new-instance v8, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v8, v7}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 283
    .local v8, slm:Landroid/app/ShutdownLoggerManager;
    const-string v13, "ShutdownThread.beginShutdownSamsungSequence()"

    invoke-virtual {v8, v13}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 285
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v14, "audio"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 287
    .local v2, audioManager:Landroid/media/AudioManager;
    const-string/jumbo v13, "shutdown"

    const-string v14, "1"

    invoke-virtual {v2, v13, v14}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :try_start_3b
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 292
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 293
    .local v10, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v11, v13, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 294
    .local v11, topActivity:Landroid/content/ComponentName;
    const-string v5, "com.sec.android.app.camera"

    .line 295
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6b

    .line 297
    new-instance v9, Landroid/content/Intent;

    const-string v13, "POWER_OFF_ANIMATION_START"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v9, startAnimation:Landroid/content/Intent;
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_6b} :catch_175

    .line 305
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v9           #startAnimation:Landroid/content/Intent;
    .end local v10           #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v11           #topActivity:Landroid/content/ComponentName;
    :cond_6b
    :goto_6b
    new-instance v6, Landroid/app/ShutdownDialog;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;)V

    .line 306
    .local v6, pd:Landroid/app/ShutdownDialog;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/app/ShutdownDialog;->setCancelable(Z)V

    .line 307
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7e5

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 309
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/high16 v14, 0x20

    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 310
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 311
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 312
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 315
    new-instance v13, Ljava/util/concurrent/Semaphore;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v13, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 317
    :try_start_aa
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_af
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_af} :catch_140

    .line 322
    :goto_af
    new-instance v13, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v13}, Lcom/android/internal/app/ShutdownThread$4;-><init>()V

    invoke-virtual {v6, v13}, Landroid/app/ShutdownDialog;->setOnAnimationEnd(Ljava/lang/Runnable;)V

    .line 330
    const-string/jumbo v13, "window"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v12

    .line 332
    .local v12, wm:Landroid/view/IWindowManager;
    const/4 v13, 0x1

    :try_start_c3
    invoke-interface {v12, v13}, Landroid/view/IWindowManager;->setStatusBarCanHideNotInActivity(Z)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c6} :catch_14d
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_153

    .line 338
    :goto_c6
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->show()V

    .line 342
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 343
    sget-object v14, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v13, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    iput-object v13, v14, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 346
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 348
    :try_start_e1
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v14, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v14, v14, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v15, 0x1

    const-string v16, "ShutdownThread-cpu"

    invoke-virtual/range {v14 .. v16}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 350
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v13, v13, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 351
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v13, v13, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_ff
    .catch Ljava/lang/SecurityException; {:try_start_e1 .. :try_end_ff} :catch_159

    .line 358
    :goto_ff
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 359
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v13, v13, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v13}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v13

    if-eqz v13, :cond_12d

    .line 361
    :try_start_10e
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v14, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v14, v14, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v15, 0x1a

    const-string v16, "ShutdownThread-screen"

    invoke-virtual/range {v14 .. v16}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 363
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v13, v13, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 364
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v13, v13, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_12d
    .catch Ljava/lang/SecurityException; {:try_start_10e .. :try_end_12d} :catch_167

    .line 370
    :cond_12d
    :goto_12d
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v14, Lcom/android/internal/app/ShutdownThread$5;

    invoke-direct {v14}, Lcom/android/internal/app/ShutdownThread$5;-><init>()V

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 372
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v13}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_f

    .line 279
    .end local v2           #audioManager:Landroid/media/AudioManager;
    .end local v6           #pd:Landroid/app/ShutdownDialog;
    .end local v7           #service:Landroid/app/IShutdownLogger;
    .end local v8           #slm:Landroid/app/ShutdownLoggerManager;
    .end local v12           #wm:Landroid/view/IWindowManager;
    :catchall_13d
    move-exception v13

    :try_start_13e
    monitor-exit v14
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13d

    throw v13

    .line 318
    .restart local v2       #audioManager:Landroid/media/AudioManager;
    .restart local v6       #pd:Landroid/app/ShutdownDialog;
    .restart local v7       #service:Landroid/app/IShutdownLogger;
    .restart local v8       #slm:Landroid/app/ShutdownLoggerManager;
    :catch_140
    move-exception v3

    .line 319
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v13, "ShutdownThread"

    const-string v14, "Exception occurs while sAnimationEndedLock.acquire()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v13, 0x0

    sput-object v13, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    goto/16 :goto_af

    .line 333
    .end local v3           #e:Ljava/lang/InterruptedException;
    .restart local v12       #wm:Landroid/view/IWindowManager;
    :catch_14d
    move-exception v3

    .line 334
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_c6

    .line 335
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_153
    move-exception v4

    .line 336
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c6

    .line 352
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_159
    move-exception v3

    .line 353
    .local v3, e:Ljava/lang/SecurityException;
    const-string v13, "ShutdownThread"

    const-string v14, "No permission to acquire wake lock"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_ff

    .line 365
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_167
    move-exception v3

    .line 366
    .restart local v3       #e:Ljava/lang/SecurityException;
    const-string v13, "ShutdownThread"

    const-string v14, "No permission to acquire wake lock"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_12d

    .line 300
    .end local v3           #e:Ljava/lang/SecurityException;
    .end local v6           #pd:Landroid/app/ShutdownDialog;
    .end local v12           #wm:Landroid/view/IWindowManager;
    :catch_175
    move-exception v13

    goto/16 :goto_6b
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 467
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 468
    :try_start_6
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_13

    .line 469
    const-string v3, "ShutdownThread"

    const-string v5, "Shutdown sequence already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    monitor-exit v4

    .line 542
    :goto_12
    return-void

    .line 472
    :cond_13
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 473
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_c4

    .line 475
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 477
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string/jumbo v3, "shutdown"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v2, Lcom/android/internal/app/ShutdownThread$8;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ShutdownThread$8;-><init>(Landroid/content/Context;)V

    .line 500
    .local v2, pd:Landroid/app/ProgressDialog;
    const v3, 0x1040177

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 501
    const v3, 0x104017b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 503
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 504
    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread$8;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 506
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 509
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 510
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 513
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 515
    :try_start_69
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 517
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 518
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_87
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_87} :catch_c7

    .line 525
    :goto_87
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 526
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 528
    :try_start_95
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "ShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 530
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 531
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_b4
    .catch Ljava/lang/SecurityException; {:try_start_95 .. :try_end_b4} :catch_d4

    .line 539
    :cond_b4
    :goto_b4
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v4, Lcom/android/internal/app/ShutdownThread$9;

    invoke-direct {v4}, Lcom/android/internal/app/ShutdownThread$9;-><init>()V

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 541
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v3}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_12

    .line 473
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #pd:Landroid/app/ProgressDialog;
    :catchall_c4
    move-exception v3

    :try_start_c5
    monitor-exit v4
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v3

    .line 519
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    :catch_c7
    move-exception v1

    .line 520
    .local v1, e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_87

    .line 532
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_d4
    move-exception v1

    .line 533
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_b4
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 257
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 258
    :try_start_3
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_11

    .line 259
    const-string v2, "ShutdownThread"

    const-string/jumbo v4, "reboot : shut down already running."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    monitor-exit v3

    .line 269
    :goto_10
    return-void

    .line 262
    :cond_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_43

    .line 263
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 264
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 265
    const-string/jumbo v2, "shutdownlogger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v0

    .line 266
    .local v0, service:Landroid/app/IShutdownLogger;
    new-instance v1, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v1, v0}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 267
    .local v1, slm:Landroid/app/ShutdownLoggerManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShutdownThread.reboot(),reason-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 268
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_10

    .line 262
    .end local v0           #service:Landroid/app/IShutdownLogger;
    .end local v1           #slm:Landroid/app/ShutdownLoggerManager;
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .registers 9
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 933
    const-string/jumbo v4, "shutdownlogger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v1

    .line 934
    .local v1, service:Landroid/app/IShutdownLogger;
    new-instance v2, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v2, v1}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 935
    .local v2, slm:Landroid/app/ShutdownLoggerManager;
    const-string v4, "ShutdownThread.rebootOrShutdown()"

    invoke-virtual {v2, v4}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 937
    if-eqz p0, :cond_46

    .line 938
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rebooting, reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :try_start_2f
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_3d

    .line 962
    :goto_32
    const-string v4, "ShutdownThread"

    const-string v5, "Performing low-level shutdown..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 964
    return-void

    .line 941
    :catch_3d
    move-exception v0

    .line 942
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 946
    .end local v0           #e:Ljava/lang/Exception;
    :cond_46
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    .line 948
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_4d
    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_58

    .line 956
    :goto_50
    const-wide/16 v4, 0x1f4

    :try_start_52
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_32

    .line 957
    :catch_56
    move-exception v4

    goto :goto_32

    .line 949
    :catch_58
    move-exception v0

    .line 951
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "Failed to vibrate during shutdown."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 11
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v8, 0x2

    .line 162
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 163
    :try_start_4
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_12

    .line 164
    const-string v6, "ShutdownThread"

    const-string/jumbo v8, "shutdown : Request to shutdown already running, returning."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit v7

    .line 245
    :goto_11
    return-void

    .line 167
    :cond_12
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    .line 168
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_be

    .line 170
    const-string/jumbo v6, "shutdownlogger"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v4

    .line 171
    .local v4, service:Landroid/app/IShutdownLogger;
    new-instance v5, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v5, v4}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 172
    .local v5, slm:Landroid/app/ShutdownLoggerManager;
    const-string v6, "ShutdownThread.shutdown()"

    invoke-virtual {v5, v6}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 175
    .local v2, longPressBehavior:I
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_c6

    if-ne v2, v8, :cond_c1

    const v3, 0x104017f

    .line 181
    .local v3, resourceId:I
    :goto_3f
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 183
    new-instance v1, Ljava/io/File;

    const-string v6, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    .line 189
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz p1, :cond_d6

    .line 192
    const-string v6, "ShutdownThread"

    const-string v7, "########POWEROFF START WITH CONFIRM######"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_d2

    const v6, 0x1040185

    :goto_84
    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    new-instance v8, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v8, p0}, Lcom/android/internal/app/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040009

    new-instance v8, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v8}, Lcom/android/internal/app/ShutdownThread$1;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 224
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v6, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v6}, Lcom/android/internal/app/ShutdownThread$3;-><init>()V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 233
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_11

    .line 168
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    .end local v4           #service:Landroid/app/IShutdownLogger;
    .end local v5           #slm:Landroid/app/ShutdownLoggerManager;
    :catchall_be
    move-exception v6

    :try_start_bf
    monitor-exit v7
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v6

    .line 175
    .restart local v2       #longPressBehavior:I
    .restart local v4       #service:Landroid/app/IShutdownLogger;
    .restart local v5       #slm:Landroid/app/ShutdownLoggerManager;
    :cond_c1
    const v3, 0x104017d

    goto/16 :goto_3f

    :cond_c6
    if-ne v2, v8, :cond_cd

    const v3, 0x104017e

    goto/16 :goto_3f

    :cond_cd
    const v3, 0x104017c

    goto/16 :goto_3f

    .line 193
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #resourceId:I
    :cond_d2
    const v6, 0x1040177

    goto :goto_84

    .line 236
    :cond_d6
    const-string v6, "ShutdownThread"

    const-string v7, "########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    .line 238
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v6, :cond_ea

    .line 239
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    goto/16 :goto_11

    .line 241
    :cond_ea
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_11
.end method

.method public static startSoundThreadForPowerOff()V
    .registers 10

    .prologue
    const/4 v9, 0x1

    .line 377
    const/4 v1, 0x0

    .line 379
    .local v1, bExceptionArised:Z
    :try_start_2
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    .line 381
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const-string v8, "//system/media/audio/ui/PowerOff.wav"

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 383
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 384
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 385
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    new-instance v8, Lcom/android/internal/app/ShutdownThread$6;

    invoke-direct {v8}, Lcom/android/internal/app/ShutdownThread$6;-><init>()V

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_6e

    .line 400
    :goto_26
    const/4 v2, 0x0

    .line 402
    .local v2, bFileValid:Z
    new-instance v4, Ljava/io/File;

    const-string v7, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v4, f:Ljava/io/File;
    const-string v7, "ShutdownThread"

    const-string v8, "Finding sound file : //system/media/audio/ui/PowerOff.wav"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    .line 408
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 414
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v2, :cond_80

    if-nez v1, :cond_80

    .line 415
    const-string v7, "ShutdownThread"

    const-string v8, "Sound file found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/app/ShutdownThread$7;

    invoke-direct {v7}, Lcom/android/internal/app/ShutdownThread$7;-><init>()V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 436
    .local v5, soundThread:Ljava/lang/Thread;
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 437
    .local v6, volume:I
    if-lez v6, :cond_6d

    .line 440
    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 442
    :try_start_65
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_6a} :catch_74

    .line 452
    :goto_6a
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 464
    .end local v5           #soundThread:Ljava/lang/Thread;
    .end local v6           #volume:I
    :cond_6d
    :goto_6d
    return-void

    .line 394
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #bFileValid:Z
    .end local v4           #f:Ljava/io/File;
    :catch_6e
    move-exception v3

    .line 395
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    const/4 v1, 0x1

    goto :goto_26

    .line 443
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #bFileValid:Z
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #soundThread:Ljava/lang/Thread;
    .restart local v6       #volume:I
    :catch_74
    move-exception v3

    .line 444
    .local v3, e:Ljava/lang/InterruptedException;
    const/4 v7, 0x0

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 445
    const-string v7, "ShutdownThread"

    const-string v8, "Exception occurs while sAnimationSoundEndedLock.acquire()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 456
    .end local v3           #e:Ljava/lang/InterruptedException;
    .end local v5           #soundThread:Ljava/lang/Thread;
    .end local v6           #volume:I
    :cond_80
    if-nez v2, :cond_89

    .line 457
    const-string v7, "ShutdownThread"

    const-string v8, "Sound file not found, SoundThread is not started !"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_89
    if-eqz v1, :cond_6d

    .line 461
    const-string v7, "ShutdownThread"

    const-string v8, "bExceptionArised is true, SoundThread is not started !"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .prologue
    .line 545
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 547
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 548
    monitor-exit v1

    .line 549
    return-void

    .line 548
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 35

    .prologue
    .line 560
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    .line 561
    .local v28, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 562
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v24

    .line 563
    .local v24, mount:Landroid/os/storage/IMountService;
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 565
    .local v10, am:Landroid/app/IActivityManager;
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 573
    .local v23, mWifiManager:Landroid/net/wifi/WifiManager;
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "sys.deviceOffReq = 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string/jumbo v2, "sys.deviceOffReq"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string/jumbo v2, "shutdownlogger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v32

    .line 579
    .local v32, service:Landroid/app/IShutdownLogger;
    new-instance v33, Landroid/app/ShutdownLoggerManager;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 580
    .local v33, slm:Landroid/app/ShutdownLoggerManager;
    const-string v2, "ShutdownThread.run()"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 586
    if-nez v28, :cond_20d

    const/16 v29, 0x1

    .line 587
    .local v29, radioOff:Z
    :goto_64
    if-nez v29, :cond_73

    .line 588
    :try_start_66
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_73} :catch_211

    .line 598
    :cond_73
    :goto_73
    const/16 v26, 0x0

    .line 601
    .local v26, out:Ljava/io/FileWriter;
    :try_start_75
    new-instance v27, Ljava/io/FileWriter;

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7e} :catch_21f

    .line 602
    .end local v26           #out:Ljava/io/FileWriter;
    .local v27, out:Ljava/io/FileWriter;
    const/16 v2, 0x30

    :try_start_80
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(I)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_85} :catch_312

    move-object/from16 v26, v27

    .line 606
    .end local v27           #out:Ljava/io/FileWriter;
    .restart local v26       #out:Ljava/io/FileWriter;
    :goto_87
    if-eqz v26, :cond_8c

    .line 607
    :try_start_89
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileWriter;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_229

    .line 614
    :cond_8c
    :goto_8c
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v2, :cond_ac

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_ac

    .line 616
    :try_start_94
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_233

    .line 617
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Animation ended lock acquire fail"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a8
    .catch Ljava/lang/InterruptedException; {:try_start_94 .. :try_end_a8} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a8} :catch_24b

    .line 653
    :catch_a8
    move-exception v16

    .line 654
    .local v16, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 661
    .end local v16           #e:Ljava/lang/InterruptedException;
    :cond_ac
    :goto_ac
    new-instance v5, Lcom/android/internal/app/ShutdownThread$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$10;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 675
    .local v5, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    if-eqz v2, :cond_25a

    const-string v2, "1"

    :goto_be
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_25e

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_c8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 676
    .local v30, reason:Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 683
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 686
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v19, v2, v6

    .line 687
    .local v19, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 688
    :goto_105
    :try_start_105
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_11e

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v14, v19, v6

    .line 690
    .local v14, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-gtz v2, :cond_262

    .line 691
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v14           #delay:J
    :cond_11e
    monitor-exit v3
    :try_end_11f
    .catchall {:try_start_105 .. :try_end_11f} :catchall_26e

    .line 705
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "sys.deviceOffReq = 1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string/jumbo v2, "sys.deviceOffReq"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    if-eqz v10, :cond_13d

    .line 715
    const/16 v2, 0x2710

    :try_start_13a
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_13d
    .catch Landroid/os/RemoteException; {:try_start_13a .. :try_end_13d} :catch_30f

    .line 721
    :cond_13d
    :goto_13d
    const-string v2, "ShutdownThread"

    const-string v3, "before Bluetooth"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    if-eqz v11, :cond_14e

    :try_start_146
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_271

    :cond_14e
    const/4 v12, 0x1

    .line 725
    .local v12, bluetoothOff:Z
    :goto_14f
    if-nez v12, :cond_15c

    .line 726
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_15c
    .catch Landroid/os/RemoteException; {:try_start_146 .. :try_end_15c} :catch_274

    .line 744
    :cond_15c
    :goto_15c
    const-string/jumbo v2, "sys.radio.shutdown"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v13

    .line 751
    .local v13, connectivity:Landroid/net/IConnectivityManager;
    if-eqz v13, :cond_188

    const/4 v2, 0x0

    :try_start_179
    invoke-interface {v13, v2}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_188

    .line 752
    const/16 v29, 0x1

    .line 753
    const-string v2, "ShutdownThread"

    const-string v3, "Skip radio off : wifi-only"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catch Landroid/os/RemoteException; {:try_start_179 .. :try_end_188} :catch_281

    .line 760
    :cond_188
    :goto_188
    const/16 v22, 0x0

    .local v22, i:I
    :goto_18a
    const/16 v2, 0x10

    move/from16 v0, v22

    if-ge v0, v2, :cond_1c4

    .line 761
    if-nez v12, :cond_19b

    .line 763
    :try_start_192
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_192 .. :try_end_195} :catch_290

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_28d

    const/4 v12, 0x1

    .line 784
    :cond_19b
    :goto_19b
    const-string v31, ""

    .line 785
    .local v31, repPhoneOff:Ljava/lang/String;
    const-string/jumbo v2, "ril.deviceOffRes"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 787
    if-eqz v31, :cond_1b9

    const-string v2, "1"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 789
    const-string v2, "ShutdownThread"

    const-string v3, "PhoneOff req resp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/16 v29, 0x1

    .line 801
    :cond_1b9
    if-eqz v29, :cond_29d

    if-eqz v12, :cond_29d

    .line 802
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    .end local v31           #repPhoneOff:Ljava/lang/String;
    :cond_1c4
    new-instance v25, Lcom/android/internal/app/ShutdownThread$11;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$11;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 895
    .local v25, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 898
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v17, v2, v6

    .line 899
    .local v17, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 901
    if-eqz v24, :cond_2eb

    .line 902
    :try_start_1e8
    invoke-interface/range {v24 .. v25}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_1eb
    .catchall {:try_start_1e8 .. :try_end_1eb} :catchall_300
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1eb} :catch_2f4

    .line 909
    :goto_1eb
    :try_start_1eb
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_204

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v14, v17, v6

    .line 911
    .restart local v14       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-gtz v2, :cond_303

    .line 912
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    .end local v14           #delay:J
    :cond_204
    monitor-exit v3
    :try_end_205
    .catchall {:try_start_1eb .. :try_end_205} :catchall_300

    .line 922
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 923
    return-void

    .line 586
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v12           #bluetoothOff:Z
    .end local v13           #connectivity:Landroid/net/IConnectivityManager;
    .end local v17           #endShutTime:J
    .end local v19           #endTime:J
    .end local v22           #i:I
    .end local v25           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v26           #out:Ljava/io/FileWriter;
    .end local v29           #radioOff:Z
    .end local v30           #reason:Ljava/lang/String;
    :cond_20d
    const/16 v29, 0x0

    goto/16 :goto_64

    .line 591
    .restart local v29       #radioOff:Z
    :catch_211
    move-exception v21

    .line 592
    .local v21, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    const/16 v29, 0x1

    goto/16 :goto_73

    .line 603
    .end local v21           #ex:Landroid/os/RemoteException;
    .restart local v26       #out:Ljava/io/FileWriter;
    :catch_21f
    move-exception v16

    .line 604
    .local v16, e:Ljava/io/IOException;
    :goto_220
    :try_start_220
    const-string v2, "ShutdownThread"

    const-string v3, "IOException during FileWriter out.write(\'0\') "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_227
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_227} :catch_229

    goto/16 :goto_87

    .line 609
    .end local v16           #e:Ljava/io/IOException;
    :catch_229
    move-exception v16

    .line 610
    .restart local v16       #e:Ljava/io/IOException;
    const-string v2, "ShutdownThread"

    const-string v3, "IOException during FileWriter out.close() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 619
    .end local v16           #e:Ljava/io/IOException;
    :cond_233
    :try_start_233
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_251

    .line 620
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_251

    .line 621
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Animation ended lock acquire fail"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_24b
    .catch Ljava/lang/InterruptedException; {:try_start_233 .. :try_end_24b} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_24b} :catch_24b

    .line 655
    :catch_24b
    move-exception v16

    .line 656
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_ac

    .line 652
    .end local v16           #e:Ljava/lang/Exception;
    :cond_251
    :try_start_251
    const-string v2, "ShutdownThread"

    const-string v3, "animation end detected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_258
    .catch Ljava/lang/InterruptedException; {:try_start_251 .. :try_end_258} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_258} :catch_24b

    goto/16 :goto_ac

    .line 675
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    :cond_25a
    const-string v2, "0"

    goto/16 :goto_be

    :cond_25e
    const-string v2, ""

    goto/16 :goto_c8

    .line 695
    .restart local v14       #delay:J
    .restart local v19       #endTime:J
    .restart local v30       #reason:Ljava/lang/String;
    :cond_262
    :try_start_262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_269
    .catchall {:try_start_262 .. :try_end_269} :catchall_26e
    .catch Ljava/lang/InterruptedException; {:try_start_262 .. :try_end_269} :catch_26b

    goto/16 :goto_105

    .line 696
    :catch_26b
    move-exception v2

    goto/16 :goto_105

    .line 699
    .end local v14           #delay:J
    :catchall_26e
    move-exception v2

    :try_start_26f
    monitor-exit v3
    :try_end_270
    .catchall {:try_start_26f .. :try_end_270} :catchall_26e

    throw v2

    .line 723
    :cond_271
    const/4 v12, 0x0

    goto/16 :goto_14f

    .line 729
    :catch_274
    move-exception v21

    .line 730
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_15c

    .line 755
    .end local v21           #ex:Landroid/os/RemoteException;
    .restart local v13       #connectivity:Landroid/net/IConnectivityManager;
    :catch_281
    move-exception v21

    .line 756
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException connectivity"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_188

    .line 763
    .end local v21           #ex:Landroid/os/RemoteException;
    .restart local v22       #i:I
    :cond_28d
    const/4 v12, 0x0

    goto/16 :goto_19b

    .line 765
    :catch_290
    move-exception v21

    .line 766
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    const/4 v12, 0x1

    goto/16 :goto_19b

    .line 806
    .end local v21           #ex:Landroid/os/RemoteException;
    .restart local v31       #repPhoneOff:Ljava/lang/String;
    :cond_29d
    const-string v2, "ShutdownThread"

    const-string v3, "before SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 808
    const-string v2, "ShutdownThread"

    const-string v3, "after SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Phone off retry:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "radioOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bluetoothOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_18a

    .line 904
    .end local v31           #repPhoneOff:Ljava/lang/String;
    .restart local v17       #endShutTime:J
    .restart local v25       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_2eb
    :try_start_2eb
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f2
    .catchall {:try_start_2eb .. :try_end_2f2} :catchall_300
    .catch Ljava/lang/Exception; {:try_start_2eb .. :try_end_2f2} :catch_2f4

    goto/16 :goto_1eb

    .line 906
    :catch_2f4
    move-exception v16

    .line 907
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_2f5
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1eb

    .line 920
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_300
    move-exception v2

    monitor-exit v3
    :try_end_302
    .catchall {:try_start_2f5 .. :try_end_302} :catchall_300

    throw v2

    .line 916
    .restart local v14       #delay:J
    :cond_303
    :try_start_303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_30a
    .catchall {:try_start_303 .. :try_end_30a} :catchall_300
    .catch Ljava/lang/InterruptedException; {:try_start_303 .. :try_end_30a} :catch_30c

    goto/16 :goto_1eb

    .line 917
    :catch_30c
    move-exception v2

    goto/16 :goto_1eb

    .line 716
    .end local v12           #bluetoothOff:Z
    .end local v13           #connectivity:Landroid/net/IConnectivityManager;
    .end local v14           #delay:J
    .end local v17           #endShutTime:J
    .end local v22           #i:I
    .end local v25           #observer:Landroid/os/storage/IMountShutdownObserver;
    :catch_30f
    move-exception v2

    goto/16 :goto_13d

    .line 603
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v19           #endTime:J
    .end local v26           #out:Ljava/io/FileWriter;
    .end local v30           #reason:Ljava/lang/String;
    .restart local v27       #out:Ljava/io/FileWriter;
    :catch_312
    move-exception v16

    move-object/from16 v26, v27

    .end local v27           #out:Ljava/io/FileWriter;
    .restart local v26       #out:Ljava/io/FileWriter;
    goto/16 :goto_220
.end method
