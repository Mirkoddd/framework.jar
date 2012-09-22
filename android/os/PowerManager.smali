.class public Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$DVFSLock;,
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final DVFS_MAX_LIMIT:I = 0x2

.field public static final DVFS_MIN_LIMIT:I = 0x1

.field public static final FULL_WAKE_LOCK:I = 0x1a

.field private static final LOCK_MASK:I = 0x3f

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final PERSISTENT_DVFSLOCK_SYSTEM_POWER_SAVING_MODE:I = 0x1

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field private static final REGEX_PATTERN_EMAIL:Ljava/lang/String; = "[-a-zA-Z0-9][-a-zA-Z0-9._]+@[-a-zA-Z0-9_.]+[.][-a-zA-Z0-9]+"

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6

.field private static final SKT_DM_LOCK_MODE:Ljava/lang/String; = "persist.sys.lock_mode"

.field private static final SKT_DM_LOCK_MSG:Ljava/lang/String; = "persist.sys.lock_mode_msg"

.field private static final SKT_DM_LOCK_MSG_MAX:I = 0x5b

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final WAIT_FOR_PROXIMITY_NEGATIVE:I = 0x1

.field private static final WAKE_BIT_CPU_STRONG:I = 0x1

.field private static final WAKE_BIT_CPU_WEAK:I = 0x2

.field private static final WAKE_BIT_KEYBOARD_BRIGHT:I = 0x10

.field private static final WAKE_BIT_PROXIMITY_SCREEN_OFF:I = 0x20

.field private static final WAKE_BIT_SCREEN_BRIGHT:I = 0x8

.field private static final WAKE_BIT_SCREEN_DIM:I = 0x4


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/os/IPowerManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 577
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 578
    return-void
.end method

.method public constructor <init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .registers 3
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 584
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 586
    iput-object p2, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 587
    return-void
.end method


# virtual methods
.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .registers 10
    .parameter "type"
    .parameter "frequency"
    .parameter "callingId"
    .parameter "tag"

    .prologue
    .line 761
    packed-switch p1, :pswitch_data_38

    .line 766
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "PowerManager : DVFSLock : invalid type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 769
    :pswitch_b
    invoke-virtual {p0}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v2

    .line 770
    .local v2, supportedFrequency:[I
    if-nez v2, :cond_19

    .line 771
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "PowerManager : DVFSLock : getSupportedFrequency : null"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 774
    :cond_19
    const/4 v0, 0x0

    .line 775
    .local v0, bFound:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 776
    aget v3, v2, v1

    if-ne p2, v3, :cond_23

    .line 777
    const/4 v0, 0x1

    .line 775
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 780
    :cond_26
    if-nez v0, :cond_30

    .line 781
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "PowerManager : DVFSLock : invalid frequency"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 785
    :cond_30
    :try_start_30
    iget-object v3, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IPowerManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    .line 788
    :goto_35
    return-void

    .line 786
    :catch_36
    move-exception v3

    goto :goto_35

    .line 761
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public getLockState()Z
    .registers 3

    .prologue
    .line 627
    const-string/jumbo v0, "persist.sys.lock_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPlugType()I
    .registers 3

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 467
    .local v0, plugType:I
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getPlugType()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 472
    :goto_7
    return v0

    .line 469
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public getSupportedFrequency()[I
    .registers 3

    .prologue
    .line 650
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getSupportedFrequency()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 652
    :goto_6
    return-object v1

    .line 651
    :catch_7
    move-exception v0

    .line 652
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSupportedWakeLockFlags()I
    .registers 3

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getSupportedWakeLockFlags()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 528
    :goto_6
    return v1

    .line 527
    :catch_7
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public goToSleep(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 486
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 489
    :goto_5
    return-void

    .line 487
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public hideLocked()V
    .registers 3

    .prologue
    .line 616
    const-string/jumbo v0, "persist.sys.lock_mode"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string/jumbo v0, "persist.sys.lock_mode_msg"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 620
    return-void
.end method

.method public isScreenOn()Z
    .registers 3

    .prologue
    .line 546
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 548
    :goto_6
    return v1

    .line 547
    :catch_7
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;
    .registers 6
    .parameter "type"
    .parameter "frequency"
    .parameter "tag"

    .prologue
    .line 754
    if-nez p3, :cond_a

    .line 755
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PowerManager : tag is null in PowerManager.newDVFSLock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_a
    new-instance v0, Landroid/os/PowerManager$DVFSLock;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/os/PowerManager$DVFSLock;-><init>(Landroid/os/PowerManager;IILjava/lang/String;)V

    return-object v0
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .registers 5
    .parameter "flags"
    .parameter "tag"

    .prologue
    .line 430
    if-nez p2, :cond_b

    .line 431
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag is null in PowerManager.newWakeLock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_b
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    return-object v0
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 571
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->reboot(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 574
    :goto_5
    return-void

    .line 572
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public rebootWithIntent()V
    .registers 4

    .prologue
    .line 632
    const-string v1, "PowerManager"

    const-string v2, " Connect to Powermanagerservice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :try_start_7
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->rebootWithIntent()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 638
    :goto_c
    return-void

    .line 635
    :catch_d
    move-exception v0

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerManager"

    const-string v2, "RemoteException during connecting to Powermanagerservice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public releasePersistentDVFSLock(I)V
    .registers 3
    .parameter "callingId"

    .prologue
    .line 792
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->releasePersistentDVFSLock(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 795
    :goto_5
    return-void

    .line 793
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setAutoBrightnessLimit(II)V
    .registers 4
    .parameter "lowerLimit"
    .parameter "upperLimit"

    .prologue
    .line 554
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 558
    :goto_5
    return-void

    .line 555
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setBacklightBrightness(I)V
    .registers 3
    .parameter "brightness"

    .prologue
    .line 501
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 504
    :goto_5
    return-void

    .line 502
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setSystemPowerSaveMode(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 643
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setSystemPowerSaveMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 646
    :goto_5
    return-void

    .line 644
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public showLocked(Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 5
    .parameter "enableUserUnlock"
    .parameter "userMsg"

    .prologue
    .line 596
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 597
    const-string/jumbo v0, "persist.sys.lock_mode"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5b

    if-ge v0, v1, :cond_23

    .line 600
    const-string/jumbo v0, "persist.sys.lock_mode_msg"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :goto_1d
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 610
    return-void

    .line 602
    :cond_23
    const-string/jumbo v0, "persist.sys.lock_mode_msg"

    const-string v1, "Maximum length limit exceeded"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 606
    :cond_2c
    invoke-virtual {p0}, Landroid/os/PowerManager;->hideLocked()V

    goto :goto_1d
.end method

.method public systemFotaReboot(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 816
    const-string v0, "PowerManager"

    const-string v1, " Connect to Powermanagerservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :try_start_7
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->systemFotaReboot(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 821
    :goto_c
    return-void

    .line 819
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public systemReboot()V
    .registers 3

    .prologue
    .line 797
    const-string v0, "PowerManager"

    const-string v1, " Connect to Powermanagerservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :try_start_7
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->systemReboot()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 803
    :goto_c
    return-void

    .line 801
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public systemReboot_Fota()V
    .registers 2

    .prologue
    .line 809
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->systemReboot_Fota()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 812
    :goto_5
    return-void

    .line 810
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public userActivity(JZ)V
    .registers 5
    .parameter "when"
    .parameter "noChangeLights"

    .prologue
    .line 454
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 457
    :goto_5
    return-void

    .line 455
    :catch_6
    move-exception v0

    goto :goto_5
.end method
