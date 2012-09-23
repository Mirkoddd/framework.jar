.class public Landroid/app/enterprise/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/SecurityPolicy$1;
    }
.end annotation


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final KEYSTORE_KEY_NOT_FOUND:I = 0x7

.field public static final KEYSTORE_LOCKED:I = 0x2

.field public static final KEYSTORE_NO_ERROR:I = 0x1

.field public static final KEYSTORE_PERMISSION_DENIED:I = 0x6

.field public static final KEYSTORE_SYSTEM_ERROR:I = 0x4

.field public static final KEYSTORE_UNDEFINED_ACTION:I = 0x9

.field public static final KEYSTORE_UNINITIALIZED:I = 0x3

.field public static final KEYSTORE_VALUE_CORRUPTED:I = 0x8

.field public static final KEYSTORE_WRONG_PASSWORD:I = 0xa

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_CERTIFICATE:Ljava/lang/String; = ".crt"

.field public static final TYPE_PKCS12:Ljava/lang/String; = ".p12"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final WIPE_EXTERNAL_MEMORY:I = 0x2

.field public static final WIPE_INTERNAL_EXTERNAL_MEMORY:I = 0x3

.field public static final WIPE_INTERNAL_MEMORY:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mService:Landroid/app/enterprise/ISecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "SecurityPolicy"

    sput-object v0, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/app/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 77
    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    .line 79
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 82
    return-void
.end method

.method private formatInternalStorage(ZZ)Z
    .registers 6
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 477
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 479
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->formatInternalStorage(ZZ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 485
    :goto_a
    return v1

    .line 481
    :catch_b
    move-exception v0

    .line 482
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 450
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 452
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 457
    :goto_a
    return-object v1

    .line 453
    :catch_b
    move-exception v0

    .line 454
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private formatStorageCard(Z)Z
    .registers 3
    .parameter "isExternal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v0, :cond_b

    .line 498
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v0, p1}, Landroid/app/enterprise/ISecurityPolicy;->formatStorageCard(Z)Z

    move-result v0

    .line 500
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "oldpassword"
    .parameter "newpassword"

    .prologue
    .line 245
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 247
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 253
    :goto_a
    return v1

    .line 249
    :catch_b
    move-exception v0

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed changeCredentialStoragePassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public clearInstalledCertificates()Z
    .registers 4

    .prologue
    .line 390
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 392
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->clearInstalledCertificates()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 397
    :goto_a
    return v1

    .line 393
    :catch_b
    move-exception v0

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed clearInstalledCertificates"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getCredentialStorageStatus()I
    .registers 4

    .prologue
    .line 265
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 267
    .local v0, ks:Landroid/security/KeyStore;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy$1;->$SwitchMap$android$security$KeyStore$State:[I

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 271
    const/4 v1, -0x1

    :goto_14
    return v1

    .line 268
    :pswitch_15
    const/4 v1, 0x1

    goto :goto_14

    .line 269
    :pswitch_17
    const/4 v1, 0x2

    goto :goto_14

    .line 270
    :pswitch_19
    const/4 v1, 0x3

    goto :goto_14

    .line 267
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method public getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 711
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 716
    :goto_a
    return-object v1

    .line 712
    :catch_b
    move-exception v0

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 740
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 745
    :goto_a
    return-object v1

    .line 741
    :catch_b
    move-exception v0

    .line 742
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 196
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 201
    :goto_a
    return-object v1

    .line 197
    :catch_b
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getInstalledCertificateNames"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getInstalledCertificates()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 173
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->getInstalledCertificates()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 178
    :goto_a
    return-object v1

    .line 174
    :catch_b
    move-exception v0

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "admin"

    .prologue
    .line 620
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "admin"

    .prologue
    .line 646
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getSystemCertificates()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 147
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->getSystemCertificates()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 152
    :goto_a
    return-object v1

    .line 148
    :catch_b
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "type"
    .parameter "value"
    .parameter "name"
    .parameter "password"

    .prologue
    .line 342
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 344
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/ISecurityPolicy;->installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 349
    :goto_a
    return v1

    .line 345
    :catch_b
    move-exception v0

    .line 346
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .registers 6
    .parameter "type"
    .parameter "value"

    .prologue
    .line 104
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_9

    .line 106
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->installCertificateWithType(Ljava/lang/String;[B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 111
    :cond_9
    :goto_9
    return-void

    .line 107
    :catch_a
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public installCertificatesFromSdCard()V
    .registers 4

    .prologue
    .line 122
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_9

    .line 124
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->installCertificatesFromSdCard()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 129
    :cond_9
    :goto_9
    return-void

    .line 125
    :catch_a
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isExternalStorageEncrypted()Z
    .registers 4

    .prologue
    .line 586
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 588
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->isExternalStorageEncrypted()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 593
    :goto_a
    return v1

    .line 589
    :catch_b
    move-exception v0

    .line 590
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isInternalStorageEncrypted()Z
    .registers 4

    .prologue
    .line 563
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 565
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->isInternalStorageEncrypted()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 570
    :goto_a
    return v1

    .line 566
    :catch_b
    move-exception v0

    .line 567
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public powerOffDevice()V
    .registers 4

    .prologue
    .line 682
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_9

    .line 684
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->powerOffDevice()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 689
    :cond_9
    :goto_9
    return-void

    .line 685
    :catch_a
    move-exception v0

    .line 686
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public removeAccountsByType(Ljava/lang/String;)Z
    .registers 5
    .parameter "type"

    .prologue
    .line 664
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 666
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->removeAccountsByType(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 671
    :goto_a
    return v1

    .line 667
    :catch_b
    move-exception v0

    .line 668
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "key"
    .parameter "type"

    .prologue
    .line 369
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 371
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 376
    :goto_a
    return v1

    .line 372
    :catch_b
    move-exception v0

    .line 373
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed unlockCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public resetCredentialStorage()Z
    .registers 4

    .prologue
    .line 311
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 313
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->resetCredentialStorage()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 318
    :goto_a
    return v1

    .line 314
    :catch_b
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed resetCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setCredentialStoragePassword(Ljava/lang/String;)Z
    .registers 5
    .parameter "password"

    .prologue
    .line 218
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 220
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setCredentialStoragePassword(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 225
    :goto_a
    return v1

    .line 221
    :catch_b
    move-exception v0

    .line 222
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setCredentialStoragePassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setExternalStorageEncryption(Z)V
    .registers 5
    .parameter "isEncrypt"

    .prologue
    .line 541
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_9

    .line 543
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setExternalStorageEncryption(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 548
    :cond_9
    :goto_9
    return-void

    .line 544
    :catch_a
    move-exception v0

    .line 545
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setInternalStorageEncryption(Z)V
    .registers 5
    .parameter "isEncrypt"

    .prologue
    .line 518
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_9

    .line 520
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setInternalStorageEncryption(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 525
    :cond_9
    :goto_9
    return-void

    .line 521
    :catch_a
    move-exception v0

    .line 522
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .registers 4
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 609
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    .line 610
    return-void
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .registers 4
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 635
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V

    .line 636
    return-void
.end method

.method public unlockCredentialStorage(Ljava/lang/String;)Z
    .registers 5
    .parameter "password"

    .prologue
    .line 290
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_13

    .line 292
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->unlockCredentialStorage(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 297
    :goto_a
    return v1

    .line 293
    :catch_b
    move-exception v0

    .line 294
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed unlockCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public wipeDevice(I)Z
    .registers 7
    .parameter "flags"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, result:Z
    iget-object v2, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v2, :cond_1a

    .line 418
    const/4 v2, 0x2

    if-eq p1, v2, :cond_c

    if-ne p1, v4, :cond_11

    .line 420
    :cond_c
    const/4 v2, 0x1

    :try_start_d
    invoke-direct {p0, v2}, Landroid/app/enterprise/SecurityPolicy;->formatStorageCard(Z)Z

    move-result v1

    .line 422
    :cond_11
    if-eq p1, v3, :cond_15

    if-ne p1, v4, :cond_1a

    .line 424
    :cond_15
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/app/enterprise/SecurityPolicy;->formatStorageCard(Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1b

    move-result v1

    .line 431
    :cond_1a
    :goto_1a
    return v1

    .line 427
    :catch_1b
    move-exception v0

    .line 428
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with misc info policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method
