.class public abstract Landroid/app/enterprise/IDeviceInfo$Stub;
.super Landroid/os/Binder;
.source "IDeviceInfo.java"

# interfaces
.implements Landroid/app/enterprise/IDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IDeviceInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IDeviceInfo"

.field static final TRANSACTION_addCallsCount:I = 0x18

.field static final TRANSACTION_clearCallingLog:I = 0x27

.field static final TRANSACTION_clearSMSLog:I = 0x1f

.field static final TRANSACTION_dataUsageTimerActivation:I = 0x37

.field static final TRANSACTION_enableCallingCapture:I = 0x22

.field static final TRANSACTION_enableSMSCapture:I = 0x1a

.field static final TRANSACTION_getAvailableCapacityExternal:I = 0x4

.field static final TRANSACTION_getAvailableCapacityInternal:I = 0x6

.field static final TRANSACTION_getAvailableRamMemory:I = 0x20

.field static final TRANSACTION_getBytesReceivedNetwork:I = 0x33

.field static final TRANSACTION_getBytesReceivedWiFi:I = 0x31

.field static final TRANSACTION_getBytesSentNetwork:I = 0x32

.field static final TRANSACTION_getBytesSentWiFi:I = 0x30

.field static final TRANSACTION_getDataCallLog:I = 0x2b

.field static final TRANSACTION_getDataCallLoggingEnabled:I = 0x29

.field static final TRANSACTION_getDataCallStatisticsEnabled:I = 0x2d

.field static final TRANSACTION_getDataUsageTimer:I = 0x36

.field static final TRANSACTION_getDeviceMaker:I = 0xf

.field static final TRANSACTION_getDeviceName:I = 0x9

.field static final TRANSACTION_getDeviceOS:I = 0x10

.field static final TRANSACTION_getDeviceOSVersion:I = 0x11

.field static final TRANSACTION_getDevicePlatform:I = 0x12

.field static final TRANSACTION_getDeviceProcessorSpeed:I = 0x14

.field static final TRANSACTION_getDeviceProcessorType:I = 0x13

.field static final TRANSACTION_getDroppedCallsCount:I = 0x15

.field static final TRANSACTION_getInboundSMSCaptured:I = 0x1d

.field static final TRANSACTION_getIncomingCallingCaptured:I = 0x25

.field static final TRANSACTION_getMissedCallsCount:I = 0x16

.field static final TRANSACTION_getModelName:I = 0x7

.field static final TRANSACTION_getModelNumber:I = 0x8

.field static final TRANSACTION_getModemFirmware:I = 0xc

.field static final TRANSACTION_getOutboundSMSCaptured:I = 0x1c

.field static final TRANSACTION_getOutgoingCallingCaptured:I = 0x24

.field static final TRANSACTION_getPlatformSDK:I = 0xd

.field static final TRANSACTION_getPlatformVersion:I = 0xe

.field static final TRANSACTION_getPlatformVersionName:I = 0xb

.field static final TRANSACTION_getSerialNumber:I = 0xa

.field static final TRANSACTION_getSuccessCallsCount:I = 0x17

.field static final TRANSACTION_getTotalCapacityExternal:I = 0x3

.field static final TRANSACTION_getTotalCapacityInternal:I = 0x5

.field static final TRANSACTION_getTotalRamMemory:I = 0x21

.field static final TRANSACTION_getWifiStatisticEnabled:I = 0x2f

.field static final TRANSACTION_isCallingCaptureEnabled:I = 0x23

.field static final TRANSACTION_isDeviceLocked:I = 0x2

.field static final TRANSACTION_isDeviceSecure:I = 0x1

.field static final TRANSACTION_isSMSCaptureEnabled:I = 0x1b

.field static final TRANSACTION_resetCallsCount:I = 0x19

.field static final TRANSACTION_resetDataCallLogging:I = 0x2a

.field static final TRANSACTION_resetDataUsage:I = 0x34

.field static final TRANSACTION_setDataCallLoggingEnabled:I = 0x28

.field static final TRANSACTION_setDataCallStatisticsEnabled:I = 0x2c

.field static final TRANSACTION_setDataUsageTimer:I = 0x35

.field static final TRANSACTION_setWifiStatisticEnabled:I = 0x2e

.field static final TRANSACTION_storeCalling:I = 0x26

.field static final TRANSACTION_storeSMS:I = 0x1e

.field static final TRANSACTION_updateDataUsageState:I = 0x38


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/app/enterprise/IDeviceInfo;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/app/enterprise/IDeviceInfo$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IDeviceInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_448

    .line 527
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_9
    return v9

    .line 45
    :sswitch_a
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isDeviceSecure()Z

    move-result v6

    .line 52
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v6, :cond_1f

    move v0, v9

    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 58
    .end local v6           #_result:Z
    :sswitch_23
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isDeviceLocked()Z

    move-result v6

    .line 60
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_32

    move v0, v9

    :cond_32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 66
    .end local v6           #_result:Z
    :sswitch_36
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getTotalCapacityExternal()J

    move-result-wide v6

    .line 68
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 74
    .end local v6           #_result:J
    :sswitch_46
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getAvailableCapacityExternal()J

    move-result-wide v6

    .line 76
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 82
    .end local v6           #_result:J
    :sswitch_56
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getTotalCapacityInternal()J

    move-result-wide v6

    .line 84
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 90
    .end local v6           #_result:J
    :sswitch_66
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getAvailableCapacityInternal()J

    move-result-wide v6

    .line 92
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 98
    .end local v6           #_result:J
    :sswitch_76
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getModelName()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 106
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_86
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getModelNumber()Ljava/lang/String;

    move-result-object v6

    .line 108
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 114
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_97
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    .line 116
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 122
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_a8
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    .line 124
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 130
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_b9
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getPlatformVersionName()Ljava/lang/String;

    move-result-object v6

    .line 132
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 138
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_ca
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getModemFirmware()Ljava/lang/String;

    move-result-object v6

    .line 140
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 146
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_db
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getPlatformSDK()I

    move-result v6

    .line 148
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 154
    .end local v6           #_result:I
    :sswitch_ec
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getPlatformVersion()Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 162
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_fd
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceMaker()Ljava/lang/String;

    move-result-object v6

    .line 164
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 170
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_10e
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceOS()Ljava/lang/String;

    move-result-object v6

    .line 172
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 178
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_11f
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v6

    .line 180
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 186
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_130
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDevicePlatform()Ljava/lang/String;

    move-result-object v6

    .line 188
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 194
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_141
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceProcessorType()Ljava/lang/String;

    move-result-object v6

    .line 196
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 202
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_152
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceProcessorSpeed()Ljava/lang/String;

    move-result-object v6

    .line 204
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 210
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_163
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDroppedCallsCount()I

    move-result v6

    .line 212
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 218
    .end local v6           #_result:I
    :sswitch_174
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getMissedCallsCount()I

    move-result v6

    .line 220
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 226
    .end local v6           #_result:I
    :sswitch_185
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getSuccessCallsCount()I

    move-result v6

    .line 228
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 234
    .end local v6           #_result:I
    :sswitch_196
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->addCallsCount(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 243
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_1a7
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->resetCallsCount()Z

    move-result v6

    .line 245
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v6, :cond_1b6

    move v0, v9

    :cond_1b6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 251
    .end local v6           #_result:Z
    :sswitch_1bb
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1d6

    move v1, v9

    .line 254
    .local v1, _arg0:Z
    :goto_1c7
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->enableSMSCapture(Z)Z

    move-result v6

    .line 255
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v6, :cond_1d1

    move v0, v9

    :cond_1d1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_1d6
    move v1, v0

    .line 253
    goto :goto_1c7

    .line 261
    :sswitch_1d8
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isSMSCaptureEnabled()Z

    move-result v6

    .line 263
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v6, :cond_1e7

    move v0, v9

    :cond_1e7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 269
    .end local v6           #_result:Z
    :sswitch_1ec
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getOutboundSMSCaptured()Ljava/util/List;

    move-result-object v8

    .line 271
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 277
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1fd
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getInboundSMSCaptured()Ljava/util/List;

    move-result-object v8

    .line 279
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 285
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_20e
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_22e

    move v4, v9

    .line 294
    .local v4, _arg3:Z
    :goto_226
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/enterprise/IDeviceInfo$Stub;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v4           #_arg3:Z
    :cond_22e
    move v4, v0

    .line 293
    goto :goto_226

    .line 300
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_230
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->clearSMSLog()Z

    move-result v6

    .line 302
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v6, :cond_23f

    move v0, v9

    :cond_23f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 308
    .end local v6           #_result:Z
    :sswitch_244
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getAvailableRamMemory()J

    move-result-wide v6

    .line 310
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 316
    .end local v6           #_result:J
    :sswitch_255
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getTotalRamMemory()J

    move-result-wide v6

    .line 318
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 324
    .end local v6           #_result:J
    :sswitch_266
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_281

    move v1, v9

    .line 327
    .local v1, _arg0:Z
    :goto_272
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->enableCallingCapture(Z)Z

    move-result v6

    .line 328
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v6, :cond_27c

    move v0, v9

    :cond_27c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_281
    move v1, v0

    .line 326
    goto :goto_272

    .line 334
    :sswitch_283
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isCallingCaptureEnabled()Z

    move-result v6

    .line 336
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v6, :cond_292

    move v0, v9

    :cond_292
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 342
    .end local v6           #_result:Z
    :sswitch_297
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getOutgoingCallingCaptured()Ljava/util/List;

    move-result-object v8

    .line 344
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 350
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2a8
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getIncomingCallingCaptured()Ljava/util/List;

    move-result-object v8

    .line 352
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 358
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2b9
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 364
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 366
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2de

    move v5, v9

    .local v5, _arg4:Z
    :goto_2d5
    move-object v0, p0

    .line 369
    invoke-virtual/range {v0 .. v5}, Landroid/app/enterprise/IDeviceInfo$Stub;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v5           #_arg4:Z
    :cond_2de
    move v5, v0

    .line 368
    goto :goto_2d5

    .line 375
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_2e0
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->clearCallingLog()Z

    move-result v6

    .line 377
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v6, :cond_2ef

    move v0, v9

    :cond_2ef
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 383
    .end local v6           #_result:Z
    :sswitch_2f4
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_30f

    move v1, v9

    .line 386
    .local v1, _arg0:Z
    :goto_300
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->setDataCallLoggingEnabled(Z)Z

    move-result v6

    .line 387
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v6, :cond_30a

    move v0, v9

    :cond_30a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_30f
    move v1, v0

    .line 385
    goto :goto_300

    .line 393
    :sswitch_311
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDataCallLoggingEnabled()Z

    move-result v6

    .line 395
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v6, :cond_320

    move v0, v9

    :cond_320
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 401
    .end local v6           #_result:Z
    :sswitch_325
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->resetDataCallLogging(Ljava/lang/String;)Z

    move-result v6

    .line 405
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v6, :cond_338

    move v0, v9

    :cond_338
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 411
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_33d
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDataCallLog(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 415
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 421
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_352
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_36d

    move v1, v9

    .line 424
    .local v1, _arg0:Z
    :goto_35e
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->setDataCallStatisticsEnabled(Z)Z

    move-result v6

    .line 425
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v6, :cond_368

    move v0, v9

    :cond_368
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_36d
    move v1, v0

    .line 423
    goto :goto_35e

    .line 431
    :sswitch_36f
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDataCallStatisticsEnabled()Z

    move-result v6

    .line 433
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v6, :cond_37e

    move v0, v9

    :cond_37e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 439
    .end local v6           #_result:Z
    :sswitch_383
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_39e

    move v1, v9

    .line 442
    .restart local v1       #_arg0:Z
    :goto_38f
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->setWifiStatisticEnabled(Z)Z

    move-result v6

    .line 443
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v6, :cond_399

    move v0, v9

    :cond_399
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_39e
    move v1, v0

    .line 441
    goto :goto_38f

    .line 449
    :sswitch_3a0
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getWifiStatisticEnabled()Z

    move-result v6

    .line 451
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v6, :cond_3af

    move v0, v9

    :cond_3af
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 457
    .end local v6           #_result:Z
    :sswitch_3b4
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getBytesSentWiFi()J

    move-result-wide v6

    .line 459
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 465
    .end local v6           #_result:J
    :sswitch_3c5
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getBytesReceivedWiFi()J

    move-result-wide v6

    .line 467
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 473
    .end local v6           #_result:J
    :sswitch_3d6
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getBytesSentNetwork()J

    move-result-wide v6

    .line 475
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 481
    .end local v6           #_result:J
    :sswitch_3e7
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getBytesReceivedNetwork()J

    move-result-wide v6

    .line 483
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 489
    .end local v6           #_result:J
    :sswitch_3f8
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->resetDataUsage()V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 496
    :sswitch_405
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 499
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->setDataUsageTimer(I)Z

    move-result v6

    .line 500
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    if-eqz v6, :cond_418

    move v0, v9

    :cond_418
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 506
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_41d
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDataUsageTimer()I

    move-result v6

    .line 508
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 514
    .end local v6           #_result:I
    :sswitch_42e
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->dataUsageTimerActivation()V

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 521
    :sswitch_43b
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->updateDataUsageState()V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 41
    :sswitch_data_448
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_46
        0x5 -> :sswitch_56
        0x6 -> :sswitch_66
        0x7 -> :sswitch_76
        0x8 -> :sswitch_86
        0x9 -> :sswitch_97
        0xa -> :sswitch_a8
        0xb -> :sswitch_b9
        0xc -> :sswitch_ca
        0xd -> :sswitch_db
        0xe -> :sswitch_ec
        0xf -> :sswitch_fd
        0x10 -> :sswitch_10e
        0x11 -> :sswitch_11f
        0x12 -> :sswitch_130
        0x13 -> :sswitch_141
        0x14 -> :sswitch_152
        0x15 -> :sswitch_163
        0x16 -> :sswitch_174
        0x17 -> :sswitch_185
        0x18 -> :sswitch_196
        0x19 -> :sswitch_1a7
        0x1a -> :sswitch_1bb
        0x1b -> :sswitch_1d8
        0x1c -> :sswitch_1ec
        0x1d -> :sswitch_1fd
        0x1e -> :sswitch_20e
        0x1f -> :sswitch_230
        0x20 -> :sswitch_244
        0x21 -> :sswitch_255
        0x22 -> :sswitch_266
        0x23 -> :sswitch_283
        0x24 -> :sswitch_297
        0x25 -> :sswitch_2a8
        0x26 -> :sswitch_2b9
        0x27 -> :sswitch_2e0
        0x28 -> :sswitch_2f4
        0x29 -> :sswitch_311
        0x2a -> :sswitch_325
        0x2b -> :sswitch_33d
        0x2c -> :sswitch_352
        0x2d -> :sswitch_36f
        0x2e -> :sswitch_383
        0x2f -> :sswitch_3a0
        0x30 -> :sswitch_3b4
        0x31 -> :sswitch_3c5
        0x32 -> :sswitch_3d6
        0x33 -> :sswitch_3e7
        0x34 -> :sswitch_3f8
        0x35 -> :sswitch_405
        0x36 -> :sswitch_41d
        0x37 -> :sswitch_42e
        0x38 -> :sswitch_43b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
