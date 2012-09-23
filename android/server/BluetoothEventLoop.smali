.class Landroid/server/BluetoothEventLoop;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CREATE_DEVICE_ALREADY_EXISTS:I = 0x1

.field private static final CREATE_DEVICE_FAILED:I = -0x1

.field private static final CREATE_DEVICE_SUCCESS:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_AGENT_CANCEL:I = 0x2

.field private static final EVENT_PAIRING_CONSENT_DELAYED_ACCEPT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothEventLoop"


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAuthorizationAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

.field private final mContext:Landroid/content/Context;

.field mEmergencyCallbackMode:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInterrupted:Z

.field private mNativeData:I

.field private final mPasskeyAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mSap:Landroid/bluetooth/BluetoothSap;

.field private mStarted:Z

.field private mThread:Ljava/lang/Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 110
    invoke-static {}, Landroid/server/BluetoothEventLoop;->classInitNative()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;Landroid/server/BluetoothAdapterStateMachine;)V
    .registers 9
    .parameter "context"
    .parameter "adapter"
    .parameter "bluetoothService"
    .parameter "bluetoothState"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v3, p0, Landroid/server/BluetoothEventLoop;->mEmergencyCallbackMode:Z

    .line 80
    new-instance v1, Landroid/server/BluetoothEventLoop$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothEventLoop$1;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v1, Landroid/server/BluetoothEventLoop$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothEventLoop$2;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 116
    iput-object p3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    .line 117
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    .line 118
    iput-object p4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    .line 121
    iput-object p2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 123
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 124
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "BluetoothEventLoop"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 126
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 127
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->initializeNativeDataNative()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$102(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$202(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mSap:Landroid/bluetooth/BluetoothSap;

    return-object p1
.end method

.method private addDevice(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 190
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8}, Landroid/server/BluetoothService;->getDeviceProperties()Landroid/server/BluetoothDeviceProperties;

    move-result-object v2

    .line 193
    .local v2, deviceProperties:Landroid/server/BluetoothDeviceProperties;
    if-nez v2, :cond_9

    .line 233
    :cond_8
    :goto_8
    return-void

    .line 195
    :cond_9
    invoke-virtual {v2, p1, p2}, Landroid/server/BluetoothDeviceProperties;->addProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    .line 196
    const-string v8, "RSSI"

    invoke-virtual {v2, p1, v8}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, rssi:Ljava/lang/String;
    const-string v8, "Class"

    invoke-virtual {v2, p1, v8}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, classValue:Ljava/lang/String;
    const-string v8, "Name"

    invoke-virtual {v2, p1, v8}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, name:Ljava/lang/String;
    const-string v8, "Type"

    invoke-virtual {v2, p1, v8}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, type:Ljava/lang/String;
    const-string v8, "Broadcaster"

    invoke-virtual {v2, p1, v8}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, broadcaster:Ljava/lang/String;
    if-eqz v5, :cond_80

    .line 208
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-short v6, v8

    .line 214
    .local v6, rssiValue:S
    :goto_35
    const-string v8, "LE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 216
    const-string/jumbo v8, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 218
    const-string v1, "0"

    .line 221
    :cond_48
    if-eqz v1, :cond_83

    .line 222
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.action.FOUND"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    const-string v8, "android.bluetooth.device.extra.CLASS"

    new-instance v9, Landroid/bluetooth/BluetoothClass;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    const-string v8, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 227
    const-string v8, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_8

    .line 210
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #rssiValue:S
    :cond_80
    const/16 v6, -0x8000

    .restart local v6       #rssiValue:S
    goto :goto_35

    .line 231
    :cond_83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClassValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for remote device: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method private checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    const/4 v1, 0x0

    .line 640
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 642
    const-string v2, "BluetoothEventLoop"

    const-string v3, "Unable to get device address in checkPairingRequestAndGetAddress, returning null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_10
    return-object v1

    .line 646
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 647
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-boolean v2, p0, Landroid/server/BluetoothEventLoop;->mEmergencyCallbackMode:Z

    if-eqz v2, :cond_4a

    .line 651
    const-string v2, "BluetoothEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmergencyCallbackMode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/server/BluetoothEventLoop;->mEmergencyCallbackMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reject an incoming connection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    goto :goto_10

    .line 658
    :cond_4a
    invoke-static {}, Landroid/app/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 659
    const-string v2, "BluetoothEventLoop"

    const-string v3, "MDM pairing is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    goto :goto_10

    .line 665
    :cond_5d
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_6d

    .line 667
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    goto :goto_10

    .line 675
    :cond_6d
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_7e

    .line 676
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    :cond_7e
    move-object v1, v0

    .line 681
    goto :goto_10
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private isOtherSinkInNonDisconnectedState(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 1015
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_30

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 1020
    .local v1, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_14

    .line 1024
    :cond_13
    :goto_13
    return v3

    .line 1021
    :cond_14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1022
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v3, 0x1

    goto :goto_13

    .line 1015
    :array_30
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1238
    const-string v0, "BluetoothEventLoop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return-void
.end method

.method private onAgentAuthorize(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .parameter "objectPath"
    .parameter "deviceUuid"
    .parameter "nativeData"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 905
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_b

    .line 999
    :goto_a
    return-void

    .line 907
    :cond_b
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 909
    const-string v6, "BluetoothEventLoop"

    const-string v7, "Unable to get device address in onAuthAgentAuthorize"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 914
    :cond_1b
    const-wide/16 v8, 0xc8

    :try_start_1d
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_59

    .line 919
    :goto_20
    const/4 v1, 0x0

    .line 920
    .local v1, authorized:Z
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    .line 922
    .local v5, uuid:Landroid/os/ParcelUuid;
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 923
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    invoke-static {v5}, Landroid/app/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 927
    const-string v6, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MDM blocked authorizing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2, v7}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_a

    .line 915
    .end local v1           #authorized:Z
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #uuid:Landroid/os/ParcelUuid;
    :catch_59
    move-exception v3

    .line 916
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v8, "BluetoothEventLoop"

    const-string/jumbo v9, "onAgentAuthorize error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 935
    .end local v3           #e:Ljava/lang/InterruptedException;
    .restart local v1       #authorized:Z
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v5       #uuid:Landroid/os/ParcelUuid;
    :cond_63
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v8, :cond_109

    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-nez v8, :cond_79

    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-nez v8, :cond_79

    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_109

    :cond_79
    invoke-direct {p0, v0}, Landroid/server/BluetoothEventLoop;->isOtherSinkInNonDisconnectedState(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_109

    .line 939
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v8, v2}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-lez v8, :cond_da

    move v1, v6

    .line 940
    :goto_88
    if-eqz v1, :cond_dc

    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-nez v8, :cond_dc

    .line 941
    const-string v6, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "First check pass for incoming A2DP / AVRCP connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0, v7}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    .line 998
    :goto_ad
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAgentAuthorize("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_da
    move v1, v7

    .line 939
    goto :goto_88

    .line 949
    :cond_dc
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Incoming A2DP / AVRCP connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v7, v2, v1}, Landroid/bluetooth/BluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 952
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v0, v6}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    goto :goto_ad

    .line 954
    :cond_109
    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->isInputDevice(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_15a

    .line 956
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, v2}, Landroid/server/BluetoothService;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-lez v8, :cond_139

    move v1, v6

    .line 958
    :goto_118
    if-eqz v1, :cond_13b

    .line 959
    const-string v6, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "First check pass for incoming HID connection from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->notifyIncomingHidConnection(Ljava/lang/String;)Z

    goto/16 :goto_ad

    :cond_139
    move v1, v7

    .line 956
    goto :goto_118

    .line 963
    :cond_13b
    const-string v6, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rejecting incoming HID connection from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_ad

    .line 966
    :cond_15a
    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->isBnep(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_16d

    .line 968
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->allowIncomingTethering()Z

    move-result v1

    .line 969
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_ad

    .line 970
    :cond_16d
    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->isSimAccess(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_196

    .line 971
    const-string v6, "BluetoothEventLoop"

    const-string v7, " sap - authorize sim access connection"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.bluetooth.sap.intent.action.SAP_AUTHORIZATION"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 977
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 978
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 979
    const-string v6, "BluetoothEventLoop"

    const-string v7, " sap - broadcasted remote device name after authorization"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad

    .line 995
    .end local v4           #intent:Landroid/content/Intent;
    :cond_196
    const-string v6, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rejecting incoming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " connection from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_ad
.end method

.method private onAgentCancel()V
    .registers 5

    .prologue
    .line 1031
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1038
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1040
    return-void
.end method

.method private onAgentOutOfBandDataAvailable(Ljava/lang/String;)Z
    .registers 6
    .parameter "objectPath"

    .prologue
    const/4 v1, 0x0

    .line 1002
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1011
    :cond_9
    :goto_9
    return v1

    .line 1004
    :cond_a
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1007
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1009
    const/4 v1, 0x1

    goto :goto_9
.end method

.method private onCreateDeviceResult(Ljava/lang/String;I)V
    .registers 6
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of onCreateDeviceResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1073
    packed-switch p2, :pswitch_data_3c

    .line 1089
    :goto_19
    :pswitch_19
    return-void

    .line 1075
    :pswitch_1a
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 1077
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_19

    .line 1080
    :cond_2a
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Device exists, but we don\'t have the bluez path, failing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    .end local v0           #path:Ljava/lang/String;
    :pswitch_31
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 1084
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_19

    .line 1073
    :pswitch_data_3c
    .packed-switch -0x1
        :pswitch_31
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method private onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .registers 4
    .parameter "address"
    .parameter "result"

    .prologue
    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 317
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->onCreatePairedDeviceResult(Ljava/lang/String;I)V

    .line 318
    return-void
.end method

.method private onDeviceCreated(Ljava/lang/String;)V
    .registers 5
    .parameter "deviceObjectPath"

    .prologue
    .line 326
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, address:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 329
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, properties:[Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 331
    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    .line 334
    .end local v1           #properties:[Ljava/lang/String;
    :cond_19
    return-void
.end method

.method private onDeviceDisappeared(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private onDeviceDisconnectRequested(Ljava/lang/String;)V
    .registers 6
    .parameter "deviceObjectPath"

    .prologue
    .line 270
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 272
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceDisconnectRequested: Address of the remote device in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_10
    return-void

    .line 275
    :cond_11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private onDeviceFound(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 244
    if-nez p2, :cond_a

    .line 245
    const-string v0, "BluetoothEventLoop"

    const-string v1, "ERROR: Remote device properties are null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_9
    return-void

    .line 248
    :cond_a
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_9
.end method

.method private onDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 16
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    const/high16 v12, 0x1000

    const/4 v11, 0x1

    .line 447
    const/4 v9, 0x0

    aget-object v5, p2, v9

    .line 448
    .local v5, name:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_17

    .line 450
    const-string v9, "BluetoothEventLoop"

    const-string/jumbo v10, "onDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_16
    :goto_16
    return-void

    .line 454
    :cond_17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device property changed:  property: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p2, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 457
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 458
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v9, "RSSI"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 459
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v10, p2, v11

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v10, p2, v11

    invoke-virtual {v9, v10, v0}, Landroid/server/BluetoothService;->onGetRssiValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_55
    const-string v9, "Name"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 463
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v10, p2, v11

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 466
    const-string v9, "android.bluetooth.device.extra.NAME"

    aget-object v10, p2, v11

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 468
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_16

    .line 469
    .end local v3           #intent:Landroid/content/Intent;
    :cond_82
    const-string v9, "Alias"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 470
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v10, p2, v11

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 471
    :cond_92
    const-string v9, "Class"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cd

    .line 472
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v10, p2, v11

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 475
    const-string v9, "android.bluetooth.device.extra.CLASS"

    new-instance v10, Landroid/bluetooth/BluetoothClass;

    aget-object v11, p2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 477
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 478
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 479
    .end local v3           #intent:Landroid/content/Intent;
    :cond_cd
    const-string v9, "Connected"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_117

    .line 480
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v10, p2, v11

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v3, 0x0

    .line 482
    .restart local v3       #intent:Landroid/content/Intent;
    aget-object v9, p2, v11

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 483
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_fe

    .line 487
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0x1f40

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setLinkTimeout(Ljava/lang/String;I)V

    .line 492
    :cond_fe
    :goto_fe
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 493
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 494
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 490
    :cond_10f
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_fe

    .line 495
    .end local v3           #intent:Landroid/content/Intent;
    :cond_117
    const-string v9, "UUIDs"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_157

    .line 496
    const/4 v8, 0x0

    .line 497
    .local v8, uuid:Ljava/lang/String;
    aget-object v9, p2, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 498
    .local v4, len:I
    if-lez v4, :cond_146

    .line 499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v7, str:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    .local v2, i:I
    :goto_132
    array-length v9, p2

    if-ge v2, v9, :cond_142

    .line 501
    aget-object v9, p2, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_132

    .line 504
    :cond_142
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 506
    .end local v2           #i:I
    .end local v7           #str:Ljava/lang/StringBuilder;
    :cond_146
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0, v5, v8}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 511
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 513
    .end local v4           #len:I
    .end local v8           #uuid:Ljava/lang/String;
    :cond_157
    const-string v9, "Services"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    .line 514
    const/4 v6, 0x0

    .line 515
    .local v6, services:Ljava/lang/String;
    aget-object v9, p2, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 516
    .restart local v4       #len:I
    if-lez v4, :cond_186

    .line 517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .restart local v7       #str:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    .restart local v2       #i:I
    :goto_172
    array-length v9, p2

    if-ge v2, v9, :cond_182

    .line 519
    aget-object v9, p2, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_172

    .line 522
    :cond_182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 524
    .end local v2           #i:I
    .end local v7           #str:Ljava/lang/StringBuilder;
    :cond_186
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0, v5, v6}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->sendGattServiceUpdateIntent()V

    goto/16 :goto_16

    .line 526
    .end local v4           #len:I
    .end local v6           #services:Ljava/lang/String;
    :cond_192
    const-string v9, "Paired"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c8

    .line 527
    aget-object v9, p2, v11

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b6

    .line 531
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_16

    .line 532
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xc

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_16

    .line 535
    :cond_1b6
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xa

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 536
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Trusted"

    const-string v11, "false"

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 538
    :cond_1c8
    const-string v9, "Trusted"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f2

    .line 540
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set trust state succeeded, value is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p2, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 541
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v10, p2, v11

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 543
    :cond_1f2
    const-string v9, "GattConnected"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 544
    aget-object v9, p2, v11

    invoke-direct {p0, v9, p1}, Landroid/server/BluetoothEventLoop;->onGattConnectDisconnect(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16
.end method

.method private onDeviceRemoved(Ljava/lang/String;)V
    .registers 7
    .parameter "deviceObjectPath"

    .prologue
    .line 343
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 345
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 347
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, "UUIDs"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_1d
    return-void
.end method

.method private onDiscoverServicesResult(Ljava/lang/String;Z)V
    .registers 5
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 1051
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 1060
    :goto_8
    return-void

    .line 1055
    :cond_9
    if-eqz p2, :cond_10

    .line 1056
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)V

    .line 1058
    :cond_10
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 1059
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private onDisplayPasskey(Ljava/lang/String;II)V
    .registers 8
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 838
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 851
    :goto_6
    return-void

    .line 842
    :cond_7
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 843
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 845
    const-string v2, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 846
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 848
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 850
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6
.end method

.method private onGattCharPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "char_path"
    .parameter "property_name"
    .parameter "status"

    .prologue
    .line 281
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothService;->onGattCharPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method private onGattConnectDisconnect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "state"
    .parameter "device_path"

    .prologue
    .line 284
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->onGattConnectDisconnect(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method private onGattDiscoverCharResult(Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 6
    .parameter "servicePath"
    .parameter "charPaths"
    .parameter "result"

    .prologue
    .line 295
    if-nez p1, :cond_3

    .line 301
    :goto_2
    return-void

    .line 296
    :cond_3
    const-string v0, "BluetoothEventLoop"

    const-string/jumbo v1, "onGattDiscoverCharResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz p3, :cond_12

    .line 298
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService;->updateRemoteServicePropertiesCache(Ljava/lang/String;)V

    .line 300
    :cond_12
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->onGattDiscoverCharResult(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onGattLinkLoss(Ljava/lang/String;)V
    .registers 5
    .parameter "deviceObjectPath"

    .prologue
    .line 550
    const-string v1, "BluetoothEventLoop"

    const-string/jumbo v2, "onGattLinkLoss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->onGattLinkLoss(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private onGattPrimaryServiceDiscovery(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter "device_path"
    .parameter "uuid_primary"

    .prologue
    .line 288
    if-eqz p2, :cond_f

    if-eqz p1, :cond_f

    .line 289
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0, p2}, Landroid/server/BluetoothService;->onGattPrimaryServiceDiscovery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 292
    .end local v0           #address:Ljava/lang/String;
    :cond_f
    return-void
.end method

.method private onGattWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "characteristicPath"
    .parameter "value"

    .prologue
    .line 304
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->onGattWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter "devicePath"
    .parameter "channelPath"
    .parameter "exists"

    .prologue
    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health Device : devicePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":channelPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothService;->onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1235
    return-void
.end method

.method private onHealthDeviceConnectionResult(II)V
    .registers 5
    .parameter "chanCode"
    .parameter "result"

    .prologue
    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHealthDeviceConnectionResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1178
    const/16 v0, 0x1770

    if-eq p2, v0, :cond_2b

    .line 1179
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService;->onHealthDeviceChannelConnectionError(II)V

    .line 1182
    :cond_2b
    return-void
.end method

.method private onHealthDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .parameter "devicePath"
    .parameter "propValues"

    .prologue
    const/4 v2, 0x1

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health Device : Name of Property is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1219
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v1, p2, v2

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService;->onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    return-void
.end method

.method private onInputDeviceConnectionResult(Ljava/lang/String;I)V
    .registers 10
    .parameter "path"
    .parameter "result"

    .prologue
    .line 1100
    const/16 v4, 0x138c

    if-eq p2, v4, :cond_c

    .line 1101
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_d

    .line 1125
    .end local v0           #address:Ljava/lang/String;
    :cond_c
    :goto_c
    return-void

    .line 1104
    .restart local v0       #address:Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    .line 1105
    .local v1, connected:Z
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1106
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v2}, Landroid/server/BluetoothService;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 1107
    .local v3, state:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    .line 1108
    const/16 v4, 0x1389

    if-ne p2, v4, :cond_28

    .line 1109
    const/4 v1, 0x1

    .line 1123
    :goto_22
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0, v1}, Landroid/server/BluetoothService;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    goto :goto_c

    .line 1111
    :cond_28
    const/4 v1, 0x0

    goto :goto_22

    .line 1113
    :cond_2a
    const/4 v4, 0x3

    if-ne v3, v4, :cond_35

    .line 1114
    const/16 v4, 0x1388

    if-ne p2, v4, :cond_33

    .line 1115
    const/4 v1, 0x0

    goto :goto_22

    .line 1118
    :cond_33
    const/4 v1, 0x1

    goto :goto_22

    .line 1121
    :cond_35
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error onInputDeviceConnectionResult. State is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private onInputDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter "path"
    .parameter "propValues"

    .prologue
    .line 564
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 566
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onInputDevicePropertyChanged: Address of the remote device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_10
    return-void

    .line 569
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Device : Name of Property is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 570
    const/4 v1, 0x0

    .line 571
    .local v1, state:Z
    const/4 v2, 0x1

    aget-object v2, p2, v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 572
    const/4 v1, 0x1

    .line 574
    :cond_38
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0, v1}, Landroid/server/BluetoothService;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    goto :goto_10
.end method

.method private onLePacketCounts(I)V
    .registers 6
    .parameter "packetCounts"

    .prologue
    .line 891
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLePacketCounts : packetCounts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.LE_TESE_END_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.LE_PACKET_COUNTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method private onNetworkDeviceConnected(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "address"
    .parameter "iface"
    .parameter "destUuid"

    .prologue
    .line 1205
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1206
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 1208
    return-void
.end method

.method private onNetworkDeviceDisconnected(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 1191
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1192
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1194
    return-void
.end method

.method private onPanDeviceConnectionResult(Ljava/lang/String;I)V
    .registers 12
    .parameter "path"
    .parameter "result"

    .prologue
    const/4 v5, 0x2

    .line 1135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPanDeviceConnectionResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1137
    const/16 v6, 0x3ec

    if-eq p2, v6, :cond_2e

    .line 1138
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_2f

    .line 1166
    .end local v0           #address:Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-void

    .line 1141
    .restart local v0       #address:Ljava/lang/String;
    :cond_2f
    const/4 v1, 0x0

    .line 1142
    .local v1, connected:Z
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1143
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2}, Landroid/server/BluetoothService;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 1144
    .local v4, state:I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4f

    .line 1145
    const/16 v6, 0x3e9

    if-ne p2, v6, :cond_4d

    .line 1146
    const/4 v1, 0x1

    .line 1161
    :goto_44
    if-eqz v1, :cond_7d

    move v3, v5

    .line 1163
    .local v3, newState:I
    :goto_47
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2, v3, v5}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_2e

    .line 1148
    .end local v3           #newState:I
    :cond_4d
    const/4 v1, 0x0

    goto :goto_44

    .line 1150
    :cond_4f
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5a

    .line 1151
    const/16 v6, 0x3e8

    if-ne p2, v6, :cond_58

    .line 1152
    const/4 v1, 0x0

    goto :goto_44

    .line 1155
    :cond_58
    const/4 v1, 0x1

    goto :goto_44

    .line 1158
    :cond_5a
    const-string v6, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error onPanDeviceConnectionResult. State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 1161
    :cond_7d
    const/4 v3, 0x0

    goto :goto_47
.end method

.method private onPanDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 612
    aget-object v3, p2, v8

    .line 613
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_16

    .line 615
    const-string v4, "BluetoothEventLoop"

    const-string/jumbo v5, "onPanDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_15
    :goto_15
    return-void

    .line 619
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pan Device property changed: address  property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 622
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 623
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "Connected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 624
    aget-object v4, p2, v6

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 625
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v1, v8, v7}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_15

    .line 629
    :cond_56
    const-string v4, "Interface"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 630
    aget-object v2, p2, v6

    .line 631
    .local v2, iface:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 632
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v1, v2, v7, v7}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    goto :goto_15
.end method

.method private onRequestOobData(Ljava/lang/String;I)V
    .registers 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 874
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 882
    :goto_6
    return-void

    .line 877
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 879
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 881
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRequestPairingConsent(Ljava/lang/String;I)V
    .registers 9
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 692
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 716
    :goto_6
    return-void

    .line 701
    :cond_7
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_22

    .line 702
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 703
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 704
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    .line 708
    .end local v2           #message:Landroid/os/Message;
    :cond_22
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 709
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 711
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 713
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 715
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6
.end method

.method private onRequestPasskey(Ljava/lang/String;I)V
    .registers 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 762
    :goto_6
    return-void

    .line 754
    :cond_7
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 755
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 757
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 759
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 761
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6
.end method

.method private onRequestPasskeyConfirmation(Ljava/lang/String;II)V
    .registers 8
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 728
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 740
    :goto_6
    return-void

    .line 731
    :cond_7
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 732
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 734
    const-string v2, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 739
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6
.end method

.method private onRequestPinCode(Ljava/lang/String;I)V
    .registers 13
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 773
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 826
    :goto_6
    return-void

    .line 776
    :cond_7
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v4

    .line 778
    .local v4, pendingOutgoingAddress:Ljava/lang/String;
    new-instance v1, Landroid/bluetooth/BluetoothClass;

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v6}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 779
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 781
    .local v2, btDeviceClass:I
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 785
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 786
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getDockPin()Ljava/lang/String;

    move-result-object v5

    .line 787
    .local v5, pin:Ljava/lang/String;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_6

    .line 792
    .end local v5           #pin:Ljava/lang/String;
    :cond_3a
    sparse-switch v2, :sswitch_data_a8

    .line 802
    :cond_3d
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v6

    const/16 v7, 0x540

    if-eq v6, v7, :cond_4d

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v6

    const/16 v7, 0x5c0

    if-ne v6, v7, :cond_7d

    .line 808
    :cond_4d
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 809
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v7, "0000"

    invoke-static {v7}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_6

    .line 798
    :sswitch_61
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->attemptAutoPair(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    goto :goto_6

    .line 814
    :cond_6a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 815
    .local v5, pin:I
    invoke-direct {p0, v0, v5}, Landroid/server/BluetoothEventLoop;->sendDisplayPinIntent(Ljava/lang/String;I)V

    goto :goto_6

    .line 819
    .end local v5           #pin:I
    :cond_7d
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 820
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 822
    const-string v6, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 823
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 825
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6

    .line 792
    :sswitch_data_a8
    .sparse-switch
        0x404 -> :sswitch_61
        0x408 -> :sswitch_61
        0x418 -> :sswitch_61
        0x41c -> :sswitch_61
        0x428 -> :sswitch_61
    .end sparse-switch
.end method

.method private onSimAccessServerPropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .parameter "path"
    .parameter "propValues"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimAccess Server: Name of Property is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimAccess Server: Value of Property is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 593
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.sap.intent.action.SAP_STATE_NOTIFY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, intent:Landroid/content/Intent;
    aget-object v1, p2, v4

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 595
    const-string v1, "android.bluetooth.sap.intent.SAP_STATE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    :goto_4a
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 601
    return-void

    .line 597
    :cond_52
    const-string v1, "android.bluetooth.sap.intent.SAP_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4a
.end method

.method private sendDisplayPinIntent(Ljava/lang/String;I)V
    .registers 6
    .parameter "address"
    .parameter "pin"

    .prologue
    .line 855
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 856
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 857
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 858
    const-string v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 861
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 864
    return-void
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->cleanupNativeDataNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 160
    return-void

    .line 158
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getAuthorizationAgentRequestData()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getPasskeyAgentRequestData()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getProfileProxy()V
    .registers 5

    .prologue
    .line 131
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 132
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 133
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 134
    return-void
.end method

.method public isEventLoopRunning()Z
    .registers 2

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    return v0
.end method

.method onPropertyChanged([Ljava/lang/String;)V
    .registers 16
    .parameter "propValues"

    .prologue
    .line 361
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->getAdapterProperties()Landroid/server/BluetoothAdapterProperties;

    move-result-object v0

    .line 364
    .local v0, adapterProperties:Landroid/server/BluetoothAdapterProperties;
    invoke-virtual {v0}, Landroid/server/BluetoothAdapterProperties;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 367
    invoke-virtual {v0}, Landroid/server/BluetoothAdapterProperties;->getAllProperties()V

    .line 369
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Property Changed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 370
    const/4 v10, 0x0

    aget-object v6, p1, v10

    .line 371
    .local v6, name:Ljava/lang/String;
    const-string v10, "Name"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 372
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v0, v6, v10}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v3, intent:Landroid/content/Intent;
    const-string v10, "android.bluetooth.adapter.extra.LOCAL_NAME"

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const/high16 v10, 0x1000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 436
    .end local v3           #intent:Landroid/content/Intent;
    :cond_61
    :goto_61
    return-void

    .line 377
    :cond_62
    const-string v10, "Pairable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_72

    const-string v10, "Discoverable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_dc

    .line 378
    :cond_72
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v0, v6, v10}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v10, "Discoverable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_87

    .line 381
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v11, 0x35

    invoke-virtual {v10, v11}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 384
    :cond_87
    const-string v10, "Pairable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ce

    const/4 v10, 0x1

    aget-object v7, p1, v10

    .line 386
    .local v7, pairable:Ljava/lang/String;
    :goto_92
    const-string v10, "Discoverable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d5

    const/4 v10, 0x1

    aget-object v1, p1, v10

    .line 390
    .local v1, discoverable:Ljava/lang/String;
    :goto_9d
    if-eqz v7, :cond_61

    if-eqz v1, :cond_61

    .line 393
    const-string/jumbo v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v11, "true"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v10, v11}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v5

    .line 396
    .local v5, mode:I
    if-ltz v5, :cond_61

    .line 397
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const/high16 v10, 0x1000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_61

    .line 384
    .end local v1           #discoverable:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #mode:I
    .end local v7           #pairable:Ljava/lang/String;
    :cond_ce
    const-string v10, "Pairable"

    invoke-virtual {v0, v10}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_92

    .line 386
    .restart local v7       #pairable:Ljava/lang/String;
    :cond_d5
    const-string v10, "Discoverable"

    invoke-virtual {v0, v10}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9d

    .line 402
    .end local v7           #pairable:Ljava/lang/String;
    :cond_dc
    const-string v10, "Discovering"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14e

    .line 404
    const-string v10, "BluetoothEventLoop"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onPropertyChanged :: setPropertyDiscovering : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v0, v6, v10}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v10, "BluetoothEventLoop"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onPropertyChanged :: getPropertyDiscovering : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Discovering"

    invoke-virtual {v0, v12}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v10, 0x1

    aget-object v10, p1, v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_141

    .line 408
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_138
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_61

    .line 411
    .end local v3           #intent:Landroid/content/Intent;
    :cond_141
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    .line 412
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_138

    .line 415
    .end local v3           #intent:Landroid/content/Intent;
    :cond_14e
    const-string v10, "Devices"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15e

    const-string v10, "UUIDs"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_198

    .line 416
    :cond_15e
    const/4 v9, 0x0

    .line 417
    .local v9, value:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 418
    .local v4, len:I
    if-lez v4, :cond_186

    .line 419
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v8, str:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    .local v2, i:I
    :goto_172
    array-length v10, p1

    if-ge v2, v10, :cond_182

    .line 421
    aget-object v10, p1, v2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_172

    .line 424
    :cond_182
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 426
    .end local v2           #i:I
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_186
    invoke-virtual {v0, v6, v9}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v10, "UUIDs"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 428
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10, v9}, Landroid/server/BluetoothService;->updateBluetoothState(Ljava/lang/String;)V

    goto/16 :goto_61

    .line 430
    .end local v4           #len:I
    .end local v9           #value:Ljava/lang/String;
    :cond_198
    const-string v10, "Powered"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c2

    .line 431
    iget-object v11, p0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v12, 0x36

    const/4 v10, 0x1

    aget-object v10, p1, v10

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1bb

    new-instance v10, Ljava/lang/Boolean;

    const/4 v13, 0x1

    invoke-direct {v10, v13}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_1b6
    invoke-virtual {v11, v12, v10}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_61

    :cond_1bb
    new-instance v10, Ljava/lang/Boolean;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_1b6

    .line 433
    :cond_1c2
    const-string v10, "DiscoverableTimeout"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 434
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v0, v6, v10}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_61
.end method

.method start()V
    .registers 2

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_e

    .line 173
    const-string v0, "Starting Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->startEventLoopNative()V

    .line 176
    :cond_e
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 180
    const-string v0, "Stopping Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->stopEventLoopNative()V

    .line 183
    :cond_e
    return-void
.end method
