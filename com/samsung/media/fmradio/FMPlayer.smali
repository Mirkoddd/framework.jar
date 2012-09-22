.class public Lcom/samsung/media/fmradio/FMPlayer;
.super Ljava/lang/Object;
.source "FMPlayer.java"


# static fields
.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final DEBUG:Z = true

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FMPlayer"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field static mContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sput-object p1, Lcom/samsung/media/fmradio/FMPlayer;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "FMPlayer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .line 69
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player created :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private checkBusy()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 512
    .local v0, code:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isBusy()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_1a

    move-result v0

    .line 517
    :goto_7
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    .line 518
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x3

    const-string v4, "Player is scanning channel"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Player is busy in scanning. Use cancelScan to stop scanning"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 513
    :catch_1a
    move-exception v1

    .line 514
    .local v1, e:Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7

    .line 525
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1f
    return-void
.end method

.method private checkOnStatus()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    .line 500
    .local v0, val:Z
    if-nez v0, :cond_16

    .line 501
    new-instance v1, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v2, 0x1

    const-string v3, "Player is not ON.Call on() method to start player"

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Player is not ON. use method on() to switch on FM player"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 507
    :cond_16
    return-void
.end method

.method private remoteError(Landroid/os/RemoteException;)V
    .registers 6
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 353
    new-instance v0, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v1, 0x1

    const-string v2, "Radio service is not running restart the phone."

    invoke-virtual {p1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public GetAFValid_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 661
    const/4 v1, -0x1

    .line 663
    .local v1, val:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getAFValid_th()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 667
    :goto_7
    return v1

    .line 664
    :catch_8
    move-exception v0

    .line 665
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public GetAF_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 642
    const/4 v1, -0x1

    .line 644
    .local v1, val:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getAF_th()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 648
    :goto_7
    return v1

    .line 645
    :catch_8
    move-exception v0

    .line 646
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public SetAFValid_th(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 654
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setAFValid_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 658
    :goto_8
    return-void

    .line 655
    :catch_9
    move-exception v0

    .line 656
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetAF_th(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 635
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setAF_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 639
    :goto_8
    return-void

    .line 636
    :catch_9
    move-exception v0

    .line 637
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SkipTuning_Value()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->SkipTuning_Value()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 599
    :goto_5
    return-void

    .line 596
    :catch_6
    move-exception v0

    .line 597
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public cancelAFSwitching()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelAFSwitching()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 313
    :goto_5
    return-void

    .line 310
    :catch_6
    move-exception v0

    .line 311
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public cancelScan()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelScan()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 337
    :goto_6
    return v1

    .line 334
    :catch_7
    move-exception v0

    .line 335
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 337
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public cancelSeek()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelSeek()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 435
    :goto_5
    return-void

    .line 432
    :catch_6
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public disableAF()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 301
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableAF()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 305
    :goto_8
    return-void

    .line 302
    :catch_9
    move-exception v0

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public disableRDS()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 282
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableRDS()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 286
    :goto_8
    return-void

    .line 283
    :catch_9
    move-exception v0

    .line 284
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public enableAF()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableAF()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 296
    :goto_8
    return-void

    .line 292
    :catch_9
    move-exception v0

    .line 293
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public enableRDS()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 272
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableRDS()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 277
    :goto_8
    return-void

    .line 273
    :catch_9
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 673
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 674
    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 675
    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .line 676
    return-void
.end method

.method public getCnt_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 622
    const/4 v1, -0x1

    .line 624
    .local v1, val:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCnt_th()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 628
    :goto_7
    return v1

    .line 625
    :catch_8
    move-exception v0

    .line 626
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public getCurrentChannel()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 440
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 441
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentChannel()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 445
    :goto_c
    return-wide v1

    .line 442
    :catch_d
    move-exception v0

    .line 443
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 445
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public getCurrentRSSI()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentRSSI()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 402
    :goto_6
    return-wide v1

    .line 399
    :catch_7
    move-exception v0

    .line 400
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 402
    const-wide/16 v1, -0x1

    goto :goto_6
.end method

.method public getLastScanResult()[J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 495
    :goto_7
    return-object v1

    .line 491
    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getLastScanResult()[J
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_7

    .line 492
    :catch_f
    move-exception v0

    .line 493
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public getMaxVolume()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getMaxVolume()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 478
    :goto_6
    return-wide v1

    .line 475
    :catch_7
    move-exception v0

    .line 476
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 478
    const-wide/16 v1, -0x1

    goto :goto_6
.end method

.method public getRSSI_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 602
    const/4 v1, -0x1

    .line 604
    .local v1, val:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getRSSI_th()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 608
    :goto_7
    return v1

    .line 605
    :catch_8
    move-exception v0

    .line 606
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public getSNR_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 612
    const/4 v1, -0x1

    .line 614
    .local v1, val:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSNR_th()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 618
    :goto_7
    return v1

    .line 615
    :catch_8
    move-exception v0

    .line 616
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public getVolume()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getVolume()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 468
    :goto_6
    return-wide v1

    .line 464
    :catch_7
    move-exception v0

    .line 465
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 468
    const-wide/16 v1, -0x1

    goto :goto_6
.end method

.method public isAFEnable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isAFEnable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 541
    :goto_6
    return v1

    .line 538
    :catch_7
    move-exception v0

    .line 539
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 541
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isAirPlaneMode()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isAirPlaneMode()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 167
    :goto_6
    return v1

    .line 164
    :catch_7
    move-exception v0

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 167
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isBatteryLow()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isBatteryLow()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 176
    :goto_6
    return v1

    .line 173
    :catch_7
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 176
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isHeadsetPlugged()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isHeadsetPlugged()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 147
    :goto_6
    return v1

    .line 144
    :catch_7
    move-exception v0

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 147
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isOn()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isOn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 212
    :goto_6
    return v1

    .line 209
    :catch_7
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 212
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isRDSEnable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isRDSEnable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 533
    :goto_6
    return v1

    .line 530
    :catch_7
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 533
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isScanning()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isScanning()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 346
    :goto_6
    return v1

    .line 343
    :catch_7
    move-exception v0

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 346
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isTvOutPlugged()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isTvOutPlugged()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 156
    :goto_6
    return v1

    .line 153
    :catch_7
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 156
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 57
    const-string v0, "FMPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public off()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 199
    .local v1, val:Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->off()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 203
    :goto_7
    return v1

    .line 200
    :catch_8
    move-exception v0

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public on()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isTvOutPlugged()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 82
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x7

    const-string v4, "TV out is on"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "TV out is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 86
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 87
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x4

    const-string v4, "Headset is not presents."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Headset is not presents."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 91
    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 92
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x5

    const-string v4, "AirPlane mode is on."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "AirPlane mode is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 96
    :cond_42
    const/4 v1, 0x0

    .line 99
    .local v1, val:Z
    :try_start_43
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->on()Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_5f

    move-result v1

    .line 106
    :goto_49
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isBatteryLow()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 107
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x6

    const-string v4, "Battery is low."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Batterys is low."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 101
    :catch_5f
    move-exception v0

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_49

    .line 110
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_64
    const-string v2, "##############Player on "

    invoke-virtual {p0, v2}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 111
    return v1
.end method

.method public on(Z)Z
    .registers 9
    .parameter "testMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p1, :cond_25

    .line 121
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 122
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x5

    const-string v4, "AirPlane mode is on."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "AirPlane mode is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 128
    :cond_18
    const/4 v1, 0x0

    .line 131
    .local v1, val:Z
    :try_start_19
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->on_in_testmode()Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_20

    move-result v1

    .line 138
    .end local v1           #val:Z
    :goto_1f
    return v1

    .line 133
    .restart local v1       #val:Z
    :catch_20
    move-exception v0

    .line 134
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_1f

    .line 138
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #val:Z
    :cond_25
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    move-result v1

    goto :goto_1f
.end method

.method public removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 556
    if-nez p1, :cond_3

    .line 564
    :goto_2
    return-void

    .line 559
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_2

    .line 560
    :catch_b
    move-exception v0

    .line 561
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_2
.end method

.method public scan()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 220
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 221
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->scan()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    .line 226
    :goto_b
    return-void

    .line 222
    :catch_c
    move-exception v0

    .line 223
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_b
.end method

.method public searchDown()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 237
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 238
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchDown()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 242
    :goto_c
    return-wide v1

    .line 239
    :catch_d
    move-exception v0

    .line 240
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 242
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public searchUp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 260
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 261
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchUp()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 265
    :goto_c
    return-wide v1

    .line 262
    :catch_d
    move-exception v0

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 265
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public seekDown()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 421
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 422
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->seekDown()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 426
    :goto_c
    return-wide v1

    .line 423
    :catch_d
    move-exception v0

    .line 424
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 426
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public seekUp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 409
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 410
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->seekUp()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 414
    :goto_c
    return-wide v1

    .line 411
    :catch_d
    move-exception v0

    .line 412
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 414
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public setBand(I)V
    .registers 4
    .parameter "band"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setBand(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 321
    :goto_5
    return-void

    .line 318
    :catch_6
    move-exception v0

    .line 319
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public setChannelSpacing(I)V
    .registers 4
    .parameter "spacing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setChannelSpacing(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 329
    :goto_5
    return-void

    .line 326
    :catch_6
    move-exception v0

    .line 327
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public setCnt_th(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 587
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setCnt_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 591
    :goto_8
    return-void

    .line 588
    :catch_9
    move-exception v0

    .line 589
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setDEConstant(J)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 372
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setDEConstant(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 376
    :goto_8
    return-void

    .line 373
    :catch_9
    move-exception v0

    .line 374
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 545
    if-nez p1, :cond_3

    .line 552
    :goto_2
    return-void

    .line 548
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_2

    .line 549
    :catch_b
    move-exception v0

    .line 550
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_2
.end method

.method public setRSSI_th(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 569
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setRSSI_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 573
    :goto_8
    return-void

    .line 570
    :catch_9
    move-exception v0

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSNR_th(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 578
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSNR_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 582
    :goto_8
    return-void

    .line 579
    :catch_9
    move-exception v0

    .line 580
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSeekRSSI(J)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 381
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSeekRSSI(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 385
    :goto_8
    return-void

    .line 382
    :catch_9
    move-exception v0

    .line 383
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSeekSNR(J)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 390
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSeekSNR(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 394
    :goto_8
    return-void

    .line 391
    :catch_9
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSpeakerOn(Z)Z
    .registers 4
    .parameter "bSpeakerOn"

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting bSpeakerOn = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 193
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public setStereo(Z)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setStereo(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 254
    :goto_8
    return-void

    .line 251
    :catch_9
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setVolume(J)V
    .registers 5
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setVolume(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 456
    :goto_5
    return-void

    .line 452
    :catch_6
    move-exception v0

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public tune(J)Z
    .registers 5
    .parameter "frequency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->tune(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 362
    const/4 v1, 0x1

    .line 366
    :goto_9
    return v1

    .line 363
    :catch_a
    move-exception v0

    .line 364
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 366
    const/4 v1, 0x0

    goto :goto_9
.end method
