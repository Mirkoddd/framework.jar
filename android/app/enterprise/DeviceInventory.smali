.class public Landroid/app/enterprise/DeviceInventory;
.super Ljava/lang/Object;
.source "DeviceInventory.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string v0, "DeviceInventory"

    sput-object v0, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "device_info"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    .line 20
    return-void
.end method


# virtual methods
.method public clearCallingLog()Z
    .registers 4

    .prologue
    .line 713
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 715
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->clearCallingLog()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 720
    :goto_a
    return v1

    .line 716
    :catch_b
    move-exception v0

    .line 717
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public clearSMSLog()Z
    .registers 4

    .prologue
    .line 576
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 578
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->clearSMSLog()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 583
    :goto_a
    return v1

    .line 579
    :catch_b
    move-exception v0

    .line 580
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public dataUsageTimerActivation()V
    .registers 4

    .prologue
    .line 966
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_9

    .line 968
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->dataUsageTimerActivation()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 973
    :cond_9
    :goto_9
    return-void

    .line 969
    :catch_a
    move-exception v0

    .line 970
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public enableCallingCapture(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 601
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 603
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->enableCallingCapture(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 608
    :goto_a
    return v1

    .line 604
    :catch_b
    move-exception v0

    .line 605
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public enableSMSCapture(Z)Z
    .registers 5
    .parameter "status"

    .prologue
    .line 470
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 472
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->enableSMSCapture(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 477
    :goto_a
    return v1

    .line 473
    :catch_b
    move-exception v0

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAvailableCapacityExternal()J
    .registers 4

    .prologue
    .line 77
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 79
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityExternal()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 84
    :goto_a
    return-wide v1

    .line 80
    :catch_b
    move-exception v0

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getAvailableCapacityInternal()J
    .registers 4

    .prologue
    .line 109
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 111
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityInternal()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 116
    :goto_a
    return-wide v1

    .line 112
    :catch_b
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getAvailableRamMemory()J
    .registers 4

    .prologue
    .line 444
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 446
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableRamMemory()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 451
    :goto_a
    return-wide v1

    .line 447
    :catch_b
    move-exception v0

    .line 448
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getBytesReceivedNetwork()J
    .registers 4

    .prologue
    .line 883
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 885
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesReceivedNetwork()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 890
    :goto_a
    return-wide v1

    .line 886
    :catch_b
    move-exception v0

    .line 887
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getBytesReceivedWiFi()J
    .registers 4

    .prologue
    .line 843
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 845
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesReceivedWiFi()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 850
    :goto_a
    return-wide v1

    .line 846
    :catch_b
    move-exception v0

    .line 847
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getBytesSentNetwork()J
    .registers 4

    .prologue
    .line 863
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 865
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesSentNetwork()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 870
    :goto_a
    return-wide v1

    .line 866
    :catch_b
    move-exception v0

    .line 867
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getBytesSentWiFi()J
    .registers 4

    .prologue
    .line 823
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 825
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesSentWiFi()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 830
    :goto_a
    return-wide v1

    .line 826
    :catch_b
    move-exception v0

    .line 827
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "time"
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
    .line 1092
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 1094
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1099
    :goto_a
    return-object v1

    .line 1095
    :catch_b
    move-exception v0

    .line 1096
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDataCallLoggingEnabled()Z
    .registers 4

    .prologue
    .line 1038
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 1040
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallLoggingEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1045
    :goto_a
    return v1

    .line 1041
    :catch_b
    move-exception v0

    .line 1042
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1045
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDataCallStatisticsEnabled()Z
    .registers 4

    .prologue
    .line 803
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 805
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallStatisticsEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 810
    :goto_a
    return v1

    .line 806
    :catch_b
    move-exception v0

    .line 807
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getDataCallStatisticsEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDataUsageTimer()I
    .registers 4

    .prologue
    .line 948
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 950
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataUsageTimer()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 955
    :goto_a
    return v1

    .line 951
    :catch_b
    move-exception v0

    .line 952
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .registers 4

    .prologue
    .line 256
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 258
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceMaker()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 263
    :goto_a
    return-object v1

    .line 259
    :catch_b
    move-exception v0

    .line 260
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 157
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 159
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceName()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 164
    :goto_a
    return-object v1

    .line 160
    :catch_b
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDeviceOS()Ljava/lang/String;
    .registers 4

    .prologue
    .line 272
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 274
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOS()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 279
    :goto_a
    return-object v1

    .line 275
    :catch_b
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 288
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 290
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOSVersion()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 295
    :goto_a
    return-object v1

    .line 291
    :catch_b
    move-exception v0

    .line 292
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .registers 4

    .prologue
    .line 304
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 306
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDevicePlatform()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 311
    :goto_a
    return-object v1

    .line 307
    :catch_b
    move-exception v0

    .line 308
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDeviceProcessorSpeed()Ljava/lang/String;
    .registers 4

    .prologue
    .line 337
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 339
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceProcessorSpeed()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 344
    :goto_a
    return-object v1

    .line 340
    :catch_b
    move-exception v0

    .line 341
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDeviceProcessorType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 321
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 323
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceProcessorType()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 328
    :goto_a
    return-object v1

    .line 324
    :catch_b
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDroppedCallsCount()I
    .registers 4

    .prologue
    .line 354
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 356
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDroppedCallsCount()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 361
    :goto_a
    return v1

    .line 357
    :catch_b
    move-exception v0

    .line 358
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getInboundSMSCaptured()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 534
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getInboundSMSCaptured()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 539
    :goto_a
    return-object v1

    .line 535
    :catch_b
    move-exception v0

    .line 536
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getIncomingCallingCaptured()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 695
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getIncomingCallingCaptured()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 700
    :goto_a
    return-object v1

    .line 696
    :catch_b
    move-exception v0

    .line 697
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMissedCallsCount()I
    .registers 4

    .prologue
    .line 370
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 372
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getMissedCallsCount()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 377
    :goto_a
    return v1

    .line 373
    :catch_b
    move-exception v0

    .line 374
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getModelName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 125
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 127
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelName()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 132
    :goto_a
    return-object v1

    .line 128
    :catch_b
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getModelNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 141
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 143
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelNumber()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 148
    :goto_a
    return-object v1

    .line 144
    :catch_b
    move-exception v0

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getModemFirmware()Ljava/lang/String;
    .registers 4

    .prologue
    .line 208
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 210
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModemFirmware()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 215
    :goto_a
    return-object v1

    .line 211
    :catch_b
    move-exception v0

    .line 212
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getOutboundSMSCaptured()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 511
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOutboundSMSCaptured()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 516
    :goto_a
    return-object v1

    .line 512
    :catch_b
    move-exception v0

    .line 513
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getOutgoingCallingCaptured()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 672
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOutgoingCallingCaptured()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 677
    :goto_a
    return-object v1

    .line 673
    :catch_b
    move-exception v0

    .line 674
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPlatformSDK()I
    .registers 4

    .prologue
    .line 224
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 226
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformSDK()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 231
    :goto_a
    return v1

    .line 227
    :catch_b
    move-exception v0

    .line 228
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 240
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 242
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformVersion()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 247
    :goto_a
    return-object v1

    .line 243
    :catch_b
    move-exception v0

    .line 244
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPlatformVersionName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 192
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 194
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformVersionName()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 199
    :goto_a
    return-object v1

    .line 195
    :catch_b
    move-exception v0

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 176
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 178
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSerialNumber()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 183
    :goto_a
    return-object v1

    .line 179
    :catch_b
    move-exception v0

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getSuccessCallsCount()I
    .registers 4

    .prologue
    .line 386
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 388
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSuccessCallsCount()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 393
    :goto_a
    return v1

    .line 389
    :catch_b
    move-exception v0

    .line 390
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getTotalCapacityExternal()J
    .registers 4

    .prologue
    .line 61
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 63
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityExternal()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 68
    :goto_a
    return-wide v1

    .line 64
    :catch_b
    move-exception v0

    .line 65
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getTotalCapacityInternal()J
    .registers 4

    .prologue
    .line 93
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 95
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityInternal()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 100
    :goto_a
    return-wide v1

    .line 96
    :catch_b
    move-exception v0

    .line 97
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getTotalRamMemory()J
    .registers 4

    .prologue
    .line 423
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 425
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalRamMemory()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 430
    :goto_a
    return-wide v1

    .line 426
    :catch_b
    move-exception v0

    .line 427
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getWifiStatisticEnabled()Z
    .registers 4

    .prologue
    .line 755
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 757
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getWifiStatisticEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 762
    :goto_a
    return v1

    .line 758
    :catch_b
    move-exception v0

    .line 759
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isCallingCaptureEnabled()Z
    .registers 4

    .prologue
    .line 617
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 619
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isCallingCaptureEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 624
    :goto_a
    return v1

    .line 620
    :catch_b
    move-exception v0

    .line 621
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isDeviceLocked()Z
    .registers 4

    .prologue
    .line 44
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 46
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceLocked()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 51
    :goto_a
    return v1

    .line 47
    :catch_b
    move-exception v0

    .line 48
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isDeviceSecure()Z
    .registers 4

    .prologue
    .line 28
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 30
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceSecure()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 35
    :goto_a
    return v1

    .line 31
    :catch_b
    move-exception v0

    .line 32
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isSMSCaptureEnabled()Z
    .registers 4

    .prologue
    .line 486
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 488
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isSMSCaptureEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 493
    :goto_a
    return v1

    .line 489
    :catch_b
    move-exception v0

    .line 490
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public resetCallsCount()Z
    .registers 4

    .prologue
    .line 402
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 404
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->resetCallsCount()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 409
    :goto_a
    return v1

    .line 405
    :catch_b
    move-exception v0

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public resetDataCallLogging(Ljava/lang/String;)Z
    .registers 5
    .parameter "time"

    .prologue
    .line 1065
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 1067
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->resetDataCallLogging(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1072
    :goto_a
    return v1

    .line 1068
    :catch_b
    move-exception v0

    .line 1069
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to resetDataCallLogging (String time)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public resetDataUsage()V
    .registers 4

    .prologue
    .line 902
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_9

    .line 904
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->resetDataUsage()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 909
    :cond_9
    :goto_9
    return-void

    .line 905
    :catch_a
    move-exception v0

    .line 906
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setDataCallLoggingEnabled(Z)Z
    .registers 5
    .parameter "status"

    .prologue
    .line 1012
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 1014
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataCallLoggingEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1019
    :goto_a
    return v1

    .line 1015
    :catch_b
    move-exception v0

    .line 1016
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setDataCallStatisticsEnabled(Z)Z
    .registers 5
    .parameter "status"

    .prologue
    .line 781
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 783
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataCallStatisticsEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 788
    :goto_a
    return v1

    .line 784
    :catch_b
    move-exception v0

    .line 785
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setDataCallLoggingStatisticsEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setDataUsageTimer(I)Z
    .registers 5
    .parameter "seconds"

    .prologue
    .line 928
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 930
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataUsageTimer(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 935
    :goto_a
    return v1

    .line 931
    :catch_b
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 935
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setWifiStatisticEnabled(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 739
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 741
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setWifiStatisticEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 746
    :goto_a
    return v1

    .line 742
    :catch_b
    move-exception v0

    .line 743
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .parameter "address"
    .parameter "timeStamp"
    .parameter "duration"
    .parameter "status"
    .parameter "isIncoming"

    .prologue
    .line 645
    iget-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v0, :cond_18

    .line 647
    :try_start_4
    iget-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IDeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    .line 649
    const/4 v0, 0x1

    .line 654
    :goto_f
    return v0

    .line 650
    :catch_10
    move-exception v6

    .line 651
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device inventory policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter "address"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isInbound"

    .prologue
    .line 557
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_9

    .line 559
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IDeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 564
    :cond_9
    :goto_9
    return-void

    .line 560
    :catch_a
    move-exception v0

    .line 561
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public updateDataUsageState()V
    .registers 4

    .prologue
    .line 983
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_9

    .line 985
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->updateDataUsageState()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 990
    :cond_9
    :goto_9
    return-void

    .line 986
    :catch_a
    move-exception v0

    .line 987
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
