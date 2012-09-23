.class public Landroid/app/enterprise/MiscPolicy;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# static fields
.field public static final ACTION_SIM_CARD_CHANGED:Ljava/lang/String; = "android.intent.action.sec.SIM_CARD_CHANGED"

.field public static final EXTRA_SIM_CHANGE_INFO:Ljava/lang/String; = "simChangeInfo"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mService:Landroid/app/enterprise/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "MiscPolicy"

    sput-object v0, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    .line 39
    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    .line 41
    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 45
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 48
    :cond_10
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 7
    .parameter "uri"
    .parameter "title"
    .parameter "iconBm"

    .prologue
    .line 405
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_13

    .line 407
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 412
    :goto_a
    return v1

    .line 408
    :catch_b
    move-exception v0

    .line 409
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addWebBookmarkBitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    .registers 7
    .parameter "uri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    .line 379
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_13

    .line 381
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 387
    :goto_a
    return v1

    .line 383
    :catch_b
    move-exception v0

    .line 384
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addWebBookmarkByteBuffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public changeLockScreenString(Ljava/lang/String;)Z
    .registers 5
    .parameter "statement"

    .prologue
    .line 450
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_13

    .line 452
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->changeLockScreenString(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 457
    :goto_a
    return v1

    .line 453
    :catch_b
    move-exception v0

    .line 454
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed changeLockScreenString"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 6
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 428
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_13

    .line 430
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 435
    :goto_a
    return v1

    .line 431
    :catch_b
    move-exception v0

    .line 432
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed deleteWebBookmark"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getCurrentLockScreenString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 467
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_13

    .line 469
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 474
    :goto_a
    return-object v1

    .line 470
    :catch_b
    move-exception v0

    .line 471
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getCurrentLockScreenString!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;
    .registers 4

    .prologue
    .line 353
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_13

    .line 355
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 360
    :goto_a
    return-object v1

    .line 356
    :catch_b
    move-exception v0

    .line 357
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .registers 4

    .prologue
    .line 511
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_13

    .line 513
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getSystemActiveFont()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 518
    :goto_a
    return-object v1

    .line 514
    :catch_b
    move-exception v0

    .line 515
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getSystemActiveFont!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 528
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_13

    .line 530
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getSystemFonts()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 535
    :goto_a
    return-object v1

    .line 531
    :catch_b
    move-exception v0

    .line 532
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getSystemFonts!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .registers 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/SecurityPolicy;->installCertificateWithType(Ljava/lang/String;[B)V

    .line 109
    return-void
.end method

.method public isBluetoothEnabled(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public isCameraEnabled(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isExternalStorageEncrypted()Z
    .registers 2

    .prologue
    .line 340
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/SecurityPolicy;->isExternalStorageEncrypted()Z

    move-result v0

    return v0
.end method

.method public isInternalStorageEncrypted()Z
    .registers 2

    .prologue
    .line 322
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/SecurityPolicy;->isInternalStorageEncrypted()Z

    move-result v0

    return v0
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isWiFiEnabled(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public setBluetoothState(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 247
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->setBluetoothState(Z)Z

    move-result v0

    return v0
.end method

.method public setCameraState(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->setCameraState(Z)Z

    move-result v0

    return v0
.end method

.method public setExternalStorageEncryption(Z)V
    .registers 3
    .parameter "isEncrypt"

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/SecurityPolicy;->setExternalStorageEncryption(Z)V

    .line 305
    return-void
.end method

.method public setInternalStorageEncryption(Z)V
    .registers 3
    .parameter "isEncrypt"

    .prologue
    .line 284
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/SecurityPolicy;->setInternalStorageEncryption(Z)V

    .line 285
    return-void
.end method

.method public setMicrophoneState(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->setMicrophoneState(Z)Z

    move-result v0

    return v0
.end method

.method public setRingerBytes([BLjava/lang/String;)V
    .registers 6
    .parameter "buffer"
    .parameter "mimeType"

    .prologue
    .line 60
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 62
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->setRingerBytes([BLjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 67
    :cond_9
    :goto_9
    return-void

    .line 63
    :catch_a
    move-exception v0

    .line 64
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "aRingtonefilePath"
    .parameter "aMmimeType"

    .prologue
    .line 78
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 80
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 85
    :cond_9
    :goto_9
    return-void

    .line 81
    :catch_a
    move-exception v0

    .line 82
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "fontName"
    .parameter "apkPath"

    .prologue
    .line 493
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_13

    .line 495
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 500
    :goto_a
    return v1

    .line 496
    :catch_b
    move-exception v0

    .line 497
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setSystemFont!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setWiFiState(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifi(Z)Z

    move-result v0

    return v0
.end method
