.class public Landroid/server/BluetoothService;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$Reaper;,
        Landroid/server/BluetoothService$RemoteService;,
        Landroid/server/BluetoothService$ServiceRecordClient;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PROPERTY_SECURITY_POLICY:Ljava/lang/String; = "service.bt.security.policy.mode"

.field private static final DBG:Z = true

.field private static final DOCK_ADDRESS_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_addr"

.field private static final DOCK_PIN_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_pin"

.field private static final INCOMING_CONNECTION_FILE:Ljava/lang/String; = "/data/misc/bluetooth/incoming_connection.conf"

.field private static final INIT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0xbb8L

.field public static final INTENT_MSG_DCMO_BT:Ljava/lang/String; = "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

.field private static final MAX_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0x2ee0L

.field private static final MESSAGE_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:I = 0x2

.field private static final MESSAGE_BT_BOOTUP:I = 0x5

.field private static final MESSAGE_BT_IT_POLICY:I = 0x4

.field private static final MESSAGE_BT_IT_POLICY_TETHERING:I = 0x7

.field private static final MESSAGE_MOBILE_OFFICE_BT_ON:I = 0x6

.field private static final MESSAGE_REMOVE_SERVICE_RECORD:I = 0x3

.field private static final MESSAGE_UUID_INTENT:I = 0x1

.field private static final RFCOMM_RECORD_REAPER:I = 0xa

.field private static final RFCOMM_UUIDS:[Landroid/os/ParcelUuid; = null

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_service_settings"

.field private static final SHARED_PREFERENCE_DOCK_ADDRESS:Ljava/lang/String; = "dock_bluetooth_address"

.field private static final STATE_CHANGE_REAPER:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothService"

.field private static final UUID_INTENT_DELAY:I = 0x7530

.field private static mDockAddress:Ljava/lang/String;

.field private static mPolicy:I


# instance fields
.field private btNAPAvailable:Z

.field private final mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mA2dpService:Landroid/server/BluetoothA2dpService;

.field private mAclLinkCount:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterConnectionState:I

.field private final mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

.field private mAdapterSdpHandles:[I

.field private mAdapterUuids:[Landroid/os/ParcelUuid;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

.field private mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

.field private mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

.field private final mBondState:Landroid/server/BluetoothBondState;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceOobData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field private final mDeviceProfileState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDeviceProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

.field private final mDeviceServiceChannelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

.field private mDockPin:Ljava/lang/String;

.field private mEventLoop:Landroid/server/BluetoothEventLoop;

.field final mGattCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothLEGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

.field private final mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mIncomingConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

.field private mIsAirplaneSensitive:Z

.field private mIsAirplaneToggleable:Z

.field private mLELockObject:Ljava/lang/Object;

.field private mMapAvailable:Z

.field private mMapRecordHandle:I

.field private mNativeData:I

.field private mPan:Landroid/bluetooth/BluetoothPan;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfilesConnected:I

.field private mProfilesConnecting:I

.field private mProfilesDisconnecting:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSapAvailable:Z

.field private final mServiceRecordToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/server/BluetoothService$ServiceRecordClient;",
            ">;"
        }
    .end annotation
.end field

.field private mStateChangeTracker:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidCallbackTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/server/BluetoothService$RemoteService;",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidIntentTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 158
    sput v3, Landroid/server/BluetoothService;->mPolicy:I

    .line 192
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAP_MNS:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .line 268
    invoke-static {}, Landroid/server/BluetoothService;->classInitNative()V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 271
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 130
    const/4 v4, -0x1

    iput v4, p0, Landroid/server/BluetoothService;->mMapRecordHandle:I

    .line 137
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    .line 219
    iput v3, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    iput v3, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    iput v3, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 230
    iput v3, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 239
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    .line 240
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    .line 701
    new-instance v4, Landroid/server/BluetoothService$2;

    invoke-direct {v4, p0}, Landroid/server/BluetoothService$2;-><init>(Landroid/server/BluetoothService;)V

    iput-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    .line 2597
    new-instance v4, Landroid/server/BluetoothService$3;

    invoke-direct {v4, p0}, Landroid/server/BluetoothService$3;-><init>(Landroid/server/BluetoothService;)V

    iput-object v4, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2972
    new-instance v4, Landroid/server/BluetoothService$4;

    invoke-direct {v4, p0}, Landroid/server/BluetoothService$4;-><init>(Landroid/server/BluetoothService;)V

    iput-object v4, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 272
    iput-object p1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    .line 278
    const-string v4, "batteryinfo"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 280
    invoke-direct {p0}, Landroid/server/BluetoothService;->initializeNativeDataNative()V

    .line 282
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledNative()I

    move-result v4

    if-ne v4, v2, :cond_5b

    .line 283
    const-string v4, "BluetoothService"

    const-string v5, "Bluetooth daemons already running - runtime restart? "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 287
    :cond_5b
    new-instance v4, Landroid/server/BluetoothBondState;

    invoke-direct {v4, p1, p0}, Landroid/server/BluetoothBondState;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v4, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    .line 288
    new-instance v4, Landroid/server/BluetoothAdapterProperties;

    invoke-direct {v4, p1, p0}, Landroid/server/BluetoothAdapterProperties;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    .line 289
    new-instance v4, Landroid/server/BluetoothDeviceProperties;

    invoke-direct {v4, p0}, Landroid/server/BluetoothDeviceProperties;-><init>(Landroid/server/BluetoothService;)V

    iput-object v4, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    .line 292
    iput v3, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    .line 296
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    .line 298
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    .line 299
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    .line 300
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    .line 301
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    .line 302
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    .line 303
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    .line 304
    new-instance v4, Landroid/bluetooth/BluetoothProfileState;

    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 305
    new-instance v4, Landroid/bluetooth/BluetoothProfileState;

    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 307
    iget-object v4, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 308
    iget-object v4, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 310
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-direct {p0, v1}, Landroid/server/BluetoothService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 315
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v4, p0}, Landroid/server/BluetoothInputProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    .line 318
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v4, p0}, Landroid/server/BluetoothPanProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    .line 319
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v4, p0}, Landroid/server/BluetoothHealthProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothHealthProfileHandler;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    .line 320
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    .line 321
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    .line 324
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, bluetoothRegexs:[Ljava/lang/String;
    array-length v4, v0

    if-eqz v4, :cond_134

    :goto_109
    iput-boolean v2, p0, Landroid/server/BluetoothService;->btNAPAvailable:Z

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/server/BluetoothService;->mMapAvailable:Z

    .line 330
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/server/BluetoothService;->mSapAvailable:Z

    .line 332
    iget-boolean v2, p0, Landroid/server/BluetoothService;->mSapAvailable:Z

    if-eqz v2, :cond_136

    .line 333
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "mSapAvailable was set to TRUE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_133
    return-void

    :cond_134
    move v2, v3

    .line 326
    goto :goto_109

    .line 335
    :cond_136
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "mSapAvailable was set to FALSE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_133
.end method

.method static synthetic access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    return-object v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    return-void
.end method

.method static synthetic access$1002(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/server/BluetoothService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$1308(Landroid/server/BluetoothService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$1310(Landroid/server/BluetoothService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$1402(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1502(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic access$1602(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 115
    sget v0, Landroid/server/BluetoothService;->mPolicy:I

    return v0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 115
    sput p0, Landroid/server/BluetoothService;->mPolicy:I

    return p0
.end method

.method static synthetic access$300(Landroid/server/BluetoothService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 115
    sput-object p0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object p0
.end method

.method private native addMapServiceRecordNative(Ljava/lang/String;III)I
.end method

.method private declared-synchronized addReservedSdpRecords(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 776
    .local v1, svcIdentifiers:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 777
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v2

    aput v2, v1, v0

    .line 776
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 779
    :cond_1d
    invoke-direct {p0, v1}, Landroid/server/BluetoothService;->addReservedServiceRecordsNative([I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 780
    monitor-exit p0

    return-void

    .line 775
    .end local v0           #i:I
    .end local v1           #svcIdentifiers:[I
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native addReservedServiceRecordsNative([I)[I
.end method

.method private native addRfcommServiceRecordNative(Ljava/lang/String;JJS)I
.end method

.method private autoConnect()V
    .registers 10

    .prologue
    .line 3531
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getKnownDevices()[Ljava/lang/String;

    move-result-object v2

    .line 3532
    .local v2, bonds:[Ljava/lang/String;
    if-nez v2, :cond_7

    .line 3544
    :cond_6
    return-void

    .line 3535
    :cond_7
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_a
    if-ge v3, v4, :cond_6

    aget-object v6, v1, v3

    .line 3536
    .local v6, path:Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3537
    .local v0, address:Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3538
    .local v7, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v7, :cond_28

    .line 3539
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 3540
    .local v5, msg:Landroid/os/Message;
    const/16 v8, 0x65

    iput v8, v5, Landroid/os/Message;->what:I

    .line 3541
    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3535
    .end local v5           #msg:Landroid/os/Message;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_a
.end method

.method static bluezStringToScanMode(ZZ)I
    .registers 3
    .parameter "pairable"
    .parameter "discoverable"

    .prologue
    .line 2995
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 2996
    const/16 v0, 0x17

    .line 3000
    :goto_6
    return v0

    .line 2997
    :cond_7
    if-eqz p0, :cond_e

    if-nez p1, :cond_e

    .line 2998
    const/16 v0, 0x15

    goto :goto_6

    .line 3000
    :cond_e
    const/16 v0, 0x14

    goto :goto_6
.end method

.method private native cancelDeviceCreationNative(Ljava/lang/String;)Z
.end method

.method private native cancelPairingUserInputNative(Ljava/lang/String;I)Z
.end method

.method private declared-synchronized checkAndRemoveRecord(II)V
    .registers 7
    .parameter "handle"
    .parameter "pid"

    .prologue
    .line 2501
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothService$ServiceRecordClient;

    .line 2502
    .local v0, client:Landroid/server/BluetoothService$ServiceRecordClient;
    if-eqz v0, :cond_51

    iget v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    if-ne p2, v1, :cond_51

    .line 2503
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    iget-object v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_45

    .line 2507
    iget-object v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2510
    :cond_45
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 2513
    :cond_51
    monitor-exit p0

    return-void

    .line 2501
    .end local v0           #client:Landroid/server/BluetoothService$ServiceRecordClient;
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private closeProfileProxy()V
    .registers 4

    .prologue
    .line 2966
    iget-object v0, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_c

    .line 2967
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2969
    :cond_c
    return-void
.end method

.method private convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 6
    .parameter "value"

    .prologue
    .line 1235
    const/4 v1, 0x0

    .line 1237
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1238
    array-length v3, v1

    new-array v2, v3, [Landroid/os/ParcelUuid;

    .line 1240
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v3, v1

    if-ge v0, v3, :cond_19

    .line 1241
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1243
    :cond_19
    return-object v2
.end method

.method private convertToAdapterState(I)I
    .registers 4
    .parameter "state"

    .prologue
    .line 3717
    packed-switch p1, :pswitch_data_14

    .line 3727
    const-string v0, "BluetoothService"

    const-string v1, "Error in convertToAdapterState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    const/4 v0, -0x1

    :goto_b
    return v0

    .line 3719
    :pswitch_c
    const/4 v0, 0x0

    goto :goto_b

    .line 3721
    :pswitch_e
    const/4 v0, 0x3

    goto :goto_b

    .line 3723
    :pswitch_10
    const/4 v0, 0x2

    goto :goto_b

    .line 3725
    :pswitch_12
    const/4 v0, 0x1

    goto :goto_b

    .line 3717
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_10
        :pswitch_e
    .end packed-switch
.end method

.method private native createDeviceNative(Ljava/lang/String;)Z
.end method

.method private createIncomingConnectionStateFile()V
    .registers 5

    .prologue
    .line 3768
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3769
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 3771
    :try_start_d
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    .line 3776
    :cond_10
    :goto_10
    return-void

    .line 3772
    :catch_11
    move-exception v0

    .line 3773
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothService"

    const-string v3, "IOException: cannot create file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private native createPairedDeviceNative(Ljava/lang/String;I)Z
.end method

.method private native createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z
.end method

.method private dumpAclConnectedDevices(Ljava/io/PrintWriter;)V
    .registers 8
    .parameter "pw"

    .prologue
    .line 2919
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getKnownDevices()[Ljava/lang/String;

    move-result-object v2

    .line 2920
    .local v2, devicesObjectPath:[Ljava/lang/String;
    const-string v5, "\n--ACL connected devices--"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2921
    if-eqz v2, :cond_1c

    .line 2922
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e
    if-ge v3, v4, :cond_1c

    aget-object v1, v0, v3

    .line 2923
    .local v1, device:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2922
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2926
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #device:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1c
    return-void
.end method

.method private dumpApplicationServiceRecords(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 2911
    const-string v3, "\n--Application Service Records--"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2912
    iget-object v3, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2913
    .local v0, handle:Ljava/lang/Integer;
    iget-object v3, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$ServiceRecordClient;

    iget v3, v3, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2914
    .local v2, pid:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tpid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 2916
    .end local v0           #handle:Ljava/lang/Integer;
    .end local v2           #pid:Ljava/lang/Integer;
    :cond_52
    return-void
.end method

.method private dumpHeadsetConnectionState(Ljava/io/PrintWriter;Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .parameter "pw"
    .parameter "device"

    .prologue
    .line 2894
    iget-object v0, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    sparse-switch v0, :sswitch_data_22

    .line 2908
    :goto_9
    return-void

    .line 2896
    :sswitch_a
    const-string v0, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 2899
    :sswitch_10
    const-string v0, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 2902
    :sswitch_16
    const-string v0, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 2905
    :sswitch_1c
    const-string v0, "getConnectionState() = STATE_AUDIO_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 2894
    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_10
        0x3 -> :sswitch_16
        0xc -> :sswitch_1c
    .end sparse-switch
.end method

.method private dumpHeadsetService(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 2799
    const-string v3, "\n--Headset Service--"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_9e

    .line 2801
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2802
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_60

    .line 2803
    const-string v3, "No headsets connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2812
    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2813
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_a0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 2815
    const-string v3, "--Connected and Disconnected Headsets"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2817
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2818
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCO audio connected to device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    .line 2805
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_60
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2806
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ngetConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->dumpHeadsetConnectionState(Ljava/io/PrintWriter;Landroid/bluetooth/BluetoothDevice;)V

    .line 2808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBatteryUsageHint() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2823
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_9e
    return-void

    .line 2813
    nop

    :array_a0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private dumpInputDeviceProfile(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 2826
    const-string v3, "\n--Bluetooth Service- Input Device Profile"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v3, :cond_b5

    .line 2828
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2829
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_42

    .line 2830
    const-string v3, "No input devices connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2850
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_b6

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothInputDevice;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 2852
    const-string v3, "--Connected and Disconnected input devices"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2853
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2854
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_32

    .line 2832
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of connected devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2834
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Priority of Connected device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    packed-switch v3, :pswitch_data_be

    goto/16 :goto_1a

    .line 2839
    :pswitch_a0
    const-string v3, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2842
    :pswitch_a7
    const-string v3, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2845
    :pswitch_ae
    const-string v3, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2857
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_b5
    return-void

    .line 2850
    :array_b6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2837
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_a7
        :pswitch_ae
    .end packed-switch
.end method

.method private dumpKnownDevices(Ljava/io/PrintWriter;)V
    .registers 14
    .parameter "pw"

    .prologue
    .line 2929
    const-string v8, "\n--Known devices--"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v8}, Landroid/server/BluetoothDeviceProperties;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2931
    .local v0, address:Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v8, v0}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    .line 2932
    .local v1, bondState:I
    const-string v8, "%s %10s (%d) %s\n"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Landroid/server/BluetoothService;->toBondStateString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v11, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2937
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 2938
    .local v7, uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-nez v7, :cond_8d

    .line 2939
    const-string v8, "\tuuids = null"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2950
    :cond_56
    iget-object v8, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_60
    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/server/BluetoothService$RemoteService;

    .line 2951
    .local v5, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v8, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 2952
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tPENDING CALLBACK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_60

    .line 2941
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_8d
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_95
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 2942
    .local v6, uuid:Landroid/os/ParcelUuid;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2943
    .local v2, channel:Ljava/lang/Integer;
    if-nez v2, :cond_c0

    .line 2944
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 2946
    :cond_c0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RFCOMM channel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 2956
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #bondState:I
    .end local v2           #channel:Ljava/lang/Integer;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #uuid:Landroid/os/ParcelUuid;
    .end local v7           #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_e1
    return-void
.end method

.method private dumpPanProfile(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 2860
    const-string v3, "\n--Bluetooth Service- Pan Profile"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v3, :cond_95

    .line 2862
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2863
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_42

    .line 2864
    const-string v3, "No Pan devices connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2883
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_96

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothPan;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 2885
    const-string v3, "--Connected and Disconnected Pan devices"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2887
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_32

    .line 2866
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of connected devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2868
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2870
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    packed-switch v3, :pswitch_data_9e

    goto :goto_1a

    .line 2872
    :pswitch_83
    const-string v3, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 2875
    :pswitch_89
    const-string v3, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 2878
    :pswitch_8f
    const-string v3, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 2890
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_95
    return-void

    .line 2883
    :array_96
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2870
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_83
        :pswitch_89
        :pswitch_8f
    .end packed-switch
.end method

.method private dumpProfileState(Ljava/io/PrintWriter;)V
    .registers 5
    .parameter "pw"

    .prologue
    .line 2787
    const-string v0, "\n--Profile State dump--"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n Headset profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n A2dp profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n HID profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n PAN profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2796
    return-void
.end method

.method private native gattGetRemoteServicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private native gattRegisterCharWatcherNative(Ljava/lang/String;)Z
.end method

.method private native gattUnregisterCharWatcherNative(Ljava/lang/String;)Z
.end method

.method private getCharacteristicsFromCache(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "servicePath"

    .prologue
    .line 1896
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Characteristics"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1897
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_c

    .line 1898
    const/4 v0, 0x0

    .line 1903
    :goto_b
    return-object v0

    .line 1900
    :cond_c
    const/4 v0, 0x0

    .line 1902
    .local v0, paths:[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1903
    goto :goto_b
.end method

.method private native getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .registers 6
    .parameter "address"
    .parameter "uuid"

    .prologue
    .line 2433
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2434
    .local v0, objectPath:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 2435
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2437
    :goto_f
    return v1

    :cond_10
    const/4 v1, -0x1

    goto :goto_f
.end method

.method private native getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private getDeviceServiceHdpDataTypeForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)[I
    .registers 6
    .parameter "address"
    .parameter "uuid"

    .prologue
    .line 2443
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2444
    .local v0, objectPath:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 2445
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x200

    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothService;->getDeviceServiceHdpDataTypeNative(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v1

    check-cast v1, [I

    .line 2447
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private native getDeviceServiceHdpDataTypeNative(Ljava/lang/String;Ljava/lang/String;I)[I
.end method

.method private getProfileProxy()V
    .registers 5

    .prologue
    .line 2959
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2961
    return-void
.end method

.method private initProfileState()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 3516
    const/4 v2, 0x0

    .line 3517
    .local v2, bonds:[Ljava/lang/String;
    const-string v7, "Devices"

    invoke-virtual {p0, v7, v8}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 3518
    .local v6, val:Ljava/lang/String;
    if-eqz v6, :cond_10

    .line 3519
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3521
    :cond_10
    if-nez v2, :cond_13

    .line 3528
    :cond_12
    return-void

    .line 3524
    :cond_13
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_16
    if-ge v3, v4, :cond_12

    aget-object v5, v1, v3

    .line 3525
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3526
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v0, v8}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3524
    add-int/lit8 v3, v3, 0x1

    goto :goto_16
.end method

.method private native initializeNativeDataNative()V
.end method

.method private final isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2724
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private isBondingFeasible(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1374
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1413
    :cond_10
    :goto_10
    return v2

    .line 1378
    :cond_11
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1381
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1384
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1385
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    new-instance v3, Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    .line 1386
    .local v0, btClass:I
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/BluetoothPolicy;->isPairingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4a

    const/16 v3, 0x100

    if-ne v0, v3, :cond_52

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/BluetoothPolicy;->isDesktopConnectivityEnabled()Z

    move-result v3

    if-nez v3, :cond_52

    .line 1388
    :cond_4a
    const-string v3, "BluetoothService"

    const-string v4, "MDM: Pairing/Desktop Bonding is blocked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1393
    :cond_52
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3}, Landroid/server/BluetoothBondState;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 1394
    const-string v3, "BluetoothService"

    const-string v4, "Ignoring createBond(): another device is bonding"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1401
    :cond_62
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_7c

    .line 1403
    const-string v3, "BluetoothService"

    const-string v4, "Ignoring createBond(): this device is already bonding or bonded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1407
    :cond_7c
    sget-object v3, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1408
    invoke-direct {p0}, Landroid/server/BluetoothService;->writeDockPin()Z

    move-result v3

    if-nez v3, :cond_93

    .line 1409
    const-string v3, "BluetoothService"

    const-string v4, "Error while writing Pin for the dock"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1413
    :cond_93
    const/4 v2, 0x1

    goto/16 :goto_10
.end method

.method private isEnabledInternal()Z
    .registers 3

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private native isEnabledNative()I
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 3895
    const-string v0, "BluetoothService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    return-void
.end method

.method private pairingAttempt(Ljava/lang/String;I)V
    .registers 13
    .parameter "address"
    .parameter "result"

    .prologue
    const-wide/16 v8, 0xbb8

    const/16 v7, 0xa

    .line 966
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    .line 967
    .local v0, attempt:I
    int-to-long v3, v0

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x2ee0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1b

    .line 969
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 984
    :cond_1a
    :goto_1a
    return-void

    .line 974
    :cond_1b
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 975
    .local v1, message:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 976
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    mul-long/2addr v4, v8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .line 978
    .local v2, postResult:Z
    if-nez v2, :cond_1a

    .line 979
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_1a
.end method

.method private native readAdapterOutOfBandDataNative()[B
.end method

.method public static declared-synchronized readDockBluetoothAddress()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 340
    const-class v6, Landroid/server/BluetoothService;

    monitor-enter v6

    :try_start_4
    sget-object v7, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    if-eqz v7, :cond_c

    sget-object v5, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_5d

    .line 371
    :cond_a
    :goto_a
    monitor-exit v6

    return-object v5

    .line 342
    :cond_c
    const/4 v3, 0x0

    .line 345
    .local v3, file:Ljava/io/BufferedInputStream;
    :try_start_d
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/sys/class/switch/dock/bt_addr"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_83
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_63
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_73

    .line 346
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .local v4, file:Ljava/io/BufferedInputStream;
    const/16 v7, 0x11

    :try_start_1b
    new-array v0, v7, [B

    .line 347
    .local v0, address:[B
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 348
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 349
    .local v1, dockAddress:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 351
    sput-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    .line 352
    sget-object v5, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_33} :catch_92
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_33} :catch_8f

    .line 362
    if-eqz v4, :cond_a

    .line 364
    :try_start_35
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_a

    .line 365
    :catch_39
    move-exception v7

    goto :goto_a

    .line 354
    :cond_3b
    :try_start_3b
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CheckBluetoothAddress failed for car dock address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_53} :catch_92
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_53} :catch_8f

    .line 362
    if-eqz v4, :cond_95

    .line 364
    :try_start_55
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_60

    move-object v3, v4

    .line 370
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    :cond_59
    :goto_59
    const/4 v7, 0x0

    :try_start_5a
    sput-object v7, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_5d

    goto :goto_a

    .line 340
    :catchall_5d
    move-exception v5

    monitor-exit v6

    throw v5

    .line 365
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v0       #address:[B
    .restart local v1       #dockAddress:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_60
    move-exception v7

    move-object v3, v4

    .line 367
    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_59

    .line 357
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    :catch_63
    move-exception v2

    .line 358
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_64
    :try_start_64
    const-string v7, "BluetoothService"

    const-string v8, "FileNotFoundException while trying to read dock address"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_83

    .line 362
    if-eqz v3, :cond_59

    .line 364
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_59

    .line 365
    :catch_71
    move-exception v7

    goto :goto_59

    .line 359
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_73
    move-exception v2

    .line 360
    .local v2, e:Ljava/io/IOException;
    :goto_74
    :try_start_74
    const-string v7, "BluetoothService"

    const-string v8, "IOException while trying to read dock address"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_83

    .line 362
    if-eqz v3, :cond_59

    .line 364
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_59

    .line 365
    :catch_81
    move-exception v7

    goto :goto_59

    .line 362
    .end local v2           #e:Ljava/io/IOException;
    :catchall_83
    move-exception v5

    :goto_84
    if-eqz v3, :cond_89

    .line 364
    :try_start_86
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 367
    :cond_89
    :goto_89
    :try_start_89
    throw v5
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_5d

    .line 365
    :catch_8a
    move-exception v7

    goto :goto_89

    .line 362
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catchall_8c
    move-exception v5

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_84

    .line 359
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_8f
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_74

    .line 357
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_92
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_64

    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v0       #address:[B
    .restart local v1       #dockAddress:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :cond_95
    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_59
.end method

.method private readIncomingConnectionState()V
    .registers 15

    .prologue
    .line 3788
    iget-object v12, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v12

    .line 3789
    const/4 v3, 0x0

    .line 3790
    .local v3, fstream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 3791
    .local v5, in:Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 3793
    .local v1, file:Ljava/io/BufferedReader;
    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    const-string v11, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v4, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_d} :catch_10d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_9b

    .line 3794
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v4, fstream:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_f5
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_110
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_101

    .line 3795
    .end local v5           #in:Ljava/io/DataInputStream;
    .local v6, in:Ljava/io/DataInputStream;
    :try_start_12
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f8
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_114
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_104

    .line 3797
    .end local v1           #file:Ljava/io/BufferedReader;
    .local v2, file:Ljava/io/BufferedReader;
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_83

    .line 3798
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 3799
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1c

    .line 3800
    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3801
    .local v10, value:[Ljava/lang/String;
    if-eqz v10, :cond_1c

    array-length v11, v10

    const/4 v13, 0x3

    if-ne v11, v13, :cond_1c

    .line 3802
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3803
    .local v9, val1:Ljava/lang/Integer;
    new-instance v8, Landroid/util/Pair;

    const/4 v11, 0x2

    aget-object v11, v10, v11

    invoke-direct {v8, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3804
    .local v8, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v11, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-virtual {v11, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_1c .. :try_end_53} :catchall_fc
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_53} :catch_54
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_53} :catch_108

    goto :goto_1c

    .line 3807
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9           #val1:Ljava/lang/Integer;
    .end local v10           #value:[Ljava/lang/String;
    :catch_54
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 3808
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :goto_58
    :try_start_58
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException: readIncomingConnectionState"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_c8

    .line 3813
    if-eqz v3, :cond_77

    .line 3814
    :try_start_74
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_e0

    .line 3818
    :cond_77
    :goto_77
    if-eqz v5, :cond_7c

    .line 3819
    :try_start_79
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_e2

    .line 3822
    :cond_7c
    :goto_7c
    if-eqz v1, :cond_81

    .line 3823
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_e4

    .line 3826
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_81
    :goto_81
    :try_start_81
    monitor-exit v12
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_d9

    .line 3827
    return-void

    .line 3813
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    :cond_83
    if-eqz v4, :cond_88

    .line 3814
    :try_start_85
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_dc

    .line 3818
    :cond_88
    :goto_88
    if-eqz v6, :cond_8d

    .line 3819
    :try_start_8a
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_de

    .line 3822
    :cond_8d
    :goto_8d
    if-eqz v2, :cond_92

    .line 3823
    :try_start_8f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_96

    :cond_92
    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 3824
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_81

    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_96
    move-exception v11

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 3825
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_81

    .line 3809
    .end local v7           #line:Ljava/lang/String;
    :catch_9b
    move-exception v0

    .line 3810
    .local v0, e:Ljava/io/IOException;
    :goto_9c
    :try_start_9c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: readIncomingConnectionState"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_9c .. :try_end_b6} :catchall_c8

    .line 3813
    if-eqz v3, :cond_bb

    .line 3814
    :try_start_b8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_e6

    .line 3818
    :cond_bb
    :goto_bb
    if-eqz v5, :cond_c0

    .line 3819
    :try_start_bd
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_e8

    .line 3822
    :cond_c0
    :goto_c0
    if-eqz v1, :cond_81

    .line 3823
    :try_start_c2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_81

    .line 3824
    :catch_c6
    move-exception v11

    goto :goto_81

    .line 3812
    .end local v0           #e:Ljava/io/IOException;
    :catchall_c8
    move-exception v11

    .line 3813
    :goto_c9
    if-eqz v3, :cond_ce

    .line 3814
    :try_start_cb
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_ea

    .line 3818
    :cond_ce
    :goto_ce
    if-eqz v5, :cond_d3

    .line 3819
    :try_start_d0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_ec

    .line 3822
    :cond_d3
    :goto_d3
    if-eqz v1, :cond_d8

    .line 3823
    :try_start_d5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_ee

    .line 3824
    :cond_d8
    :goto_d8
    :try_start_d8
    throw v11

    .line 3826
    :catchall_d9
    move-exception v11

    :goto_da
    monitor-exit v12
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_d9

    throw v11

    .line 3815
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    :catch_dc
    move-exception v11

    goto :goto_88

    .line 3820
    :catch_de
    move-exception v11

    goto :goto_8d

    .line 3815
    .end local v2           #file:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v6           #in:Ljava/io/DataInputStream;
    .end local v7           #line:Ljava/lang/String;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    :catch_e0
    move-exception v11

    goto :goto_77

    .line 3820
    :catch_e2
    move-exception v11

    goto :goto_7c

    .line 3824
    :catch_e4
    move-exception v11

    goto :goto_81

    .line 3815
    .local v0, e:Ljava/io/IOException;
    :catch_e6
    move-exception v11

    goto :goto_bb

    .line 3820
    :catch_e8
    move-exception v11

    goto :goto_c0

    .line 3815
    .end local v0           #e:Ljava/io/IOException;
    :catch_ea
    move-exception v13

    goto :goto_ce

    .line 3820
    :catch_ec
    move-exception v13

    goto :goto_d3

    .line 3824
    :catch_ee
    move-exception v13

    goto :goto_d8

    .line 3826
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    :catchall_f0
    move-exception v11

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_da

    .line 3812
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v7           #line:Ljava/lang/String;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catchall_f5
    move-exception v11

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_c9

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catchall_f8
    move-exception v11

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_c9

    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catchall_fc
    move-exception v11

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_c9

    .line 3809
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catch_101
    move-exception v0

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_9c

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_104
    move-exception v0

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_9c

    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_108
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_9c

    .line 3807
    :catch_10d
    move-exception v0

    goto/16 :goto_58

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catch_110
    move-exception v0

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_58

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_114
    move-exception v0

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_58
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .registers 6
    .parameter "filter"

    .prologue
    .line 2706
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2707
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2709
    .local v0, airplaneModeRadios:Ljava/lang/String;
    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2712
    .local v2, toggleableRadios:Ljava/lang/String;
    if-nez v0, :cond_26

    const/4 v3, 0x1

    :goto_15
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    .line 2714
    if-nez v2, :cond_2d

    const/4 v3, 0x0

    :goto_1a
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    .line 2717
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v3, :cond_25

    .line 2718
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2720
    :cond_25
    return-void

    .line 2712
    :cond_26
    const-string v3, "bluetooth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_15

    .line 2714
    :cond_2d
    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1a
.end method

.method private native removeDeviceNative(Ljava/lang/String;)Z
.end method

.method private native removeReservedServiceRecordsNative([I)Z
.end method

.method private native removeServiceRecordNative(I)Z
.end method

.method static scanModeToBluezString(I)Ljava/lang/String;
    .registers 2
    .parameter "mode"

    .prologue
    .line 3004
    packed-switch p0, :pswitch_data_10

    .line 3012
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 3006
    :pswitch_5
    const-string/jumbo v0, "off"

    goto :goto_4

    .line 3008
    :pswitch_9
    const-string v0, "connectable"

    goto :goto_4

    .line 3010
    :pswitch_c
    const-string v0, "discoverable"

    goto :goto_4

    .line 3004
    nop

    :pswitch_data_10
    .packed-switch 0x14
        :pswitch_5
        :pswitch_9
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method private native setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private setAlarmService()V
    .registers 3

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 1076
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    .line 1078
    :cond_10
    return-void
.end method

.method private native setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native setDevicePropertyStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native setLinkTimeoutNative(Ljava/lang/String;I)Z
.end method

.method private native setPairingConfirmationNative(Ljava/lang/String;ZI)Z
.end method

.method private native setPasskeyNative(Ljava/lang/String;II)Z
.end method

.method private native setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private setPropertyBoolean(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 1029
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1031
    :goto_10
    return v0

    :cond_11
    if-eqz p2, :cond_14

    const/4 v0, 0x1

    :cond_14
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_10
.end method

.method private setPropertyInteger(Ljava/lang/String;I)Z
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1023
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 1025
    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_10
.end method

.method private setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 1019
    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method private native setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z
.end method

.method private native setupNativeDataNative()Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private native stopDiscoveryNative()Z
.end method

.method private native tearDownNativeDataNative()Z
.end method

.method private static toBondStateString(I)Ljava/lang/String;
    .registers 2
    .parameter "bondState"

    .prologue
    .line 991
    packed-switch p0, :pswitch_data_10

    .line 999
    const-string v0, "??????"

    :goto_5
    return-object v0

    .line 993
    :pswitch_6
    const-string/jumbo v0, "not bonded"

    goto :goto_5

    .line 995
    :pswitch_a
    const-string v0, "bonding"

    goto :goto_5

    .line 997
    :pswitch_d
    const-string v0, "bonded"

    goto :goto_5

    .line 991
    :pswitch_data_10
    .packed-switch 0xa
        :pswitch_6
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method private truncateIncomingConnectionFile()V
    .registers 6

    .prologue
    .line 3830
    const/4 v1, 0x0

    .line 3832
    .local v1, r:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/misc/bluetooth/incoming_connection.conf"

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_60
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_3d

    .line 3833
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .local v2, r:Ljava/io/RandomAccessFile;
    const-wide/16 v3, 0x0

    :try_start_d
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_69
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_6f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_6c

    .line 3839
    if-eqz v2, :cond_72

    .line 3841
    :try_start_12
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_17

    move-object v1, v2

    .line 3847
    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    :cond_16
    :goto_16
    return-void

    .line 3842
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_17
    move-exception v3

    move-object v1, v2

    .line 3844
    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_16

    .line 3834
    :catch_1a
    move-exception v0

    .line 3835
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1b
    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_60

    .line 3839
    if-eqz v1, :cond_16

    .line 3841
    :try_start_37
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_16

    .line 3842
    :catch_3b
    move-exception v3

    goto :goto_16

    .line 3836
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3d
    move-exception v0

    .line 3837
    .local v0, e:Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_60

    .line 3839
    if-eqz v1, :cond_16

    .line 3841
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_16

    .line 3842
    :catch_5e
    move-exception v3

    goto :goto_16

    .line 3839
    .end local v0           #e:Ljava/io/IOException;
    :catchall_60
    move-exception v3

    :goto_61
    if-eqz v1, :cond_66

    .line 3841
    :try_start_63
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 3844
    :cond_66
    :goto_66
    throw v3

    .line 3842
    :catch_67
    move-exception v4

    goto :goto_66

    .line 3839
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catchall_69
    move-exception v3

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_61

    .line 3836
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_6c
    move-exception v0

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_3e

    .line 3834
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_6f
    move-exception v0

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_1b

    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :cond_72
    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_16
.end method

.method private updateCountersAndCheckForConnectionStateChange(II)Z
    .registers 6
    .parameter "state"
    .parameter "prevState"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3732
    packed-switch p2, :pswitch_data_54

    .line 3746
    :goto_5
    packed-switch p1, :pswitch_data_5e

    .line 3763
    :cond_8
    :goto_8
    return v0

    .line 3734
    :pswitch_9
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    goto :goto_5

    .line 3738
    :pswitch_10
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    goto :goto_5

    .line 3742
    :pswitch_17
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    goto :goto_5

    .line 3748
    :pswitch_1e
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    .line 3749
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_2c

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    if-eq v2, v0, :cond_8

    :cond_2c
    move v0, v1

    goto :goto_8

    .line 3752
    :pswitch_2e
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    .line 3753
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-eq v2, v0, :cond_8

    move v0, v1

    goto :goto_8

    .line 3756
    :pswitch_3a
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 3757
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_48

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    if-eq v2, v0, :cond_8

    :cond_48
    move v0, v1

    goto :goto_8

    .line 3760
    :pswitch_4a
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_52

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    if-eqz v2, :cond_8

    :cond_52
    move v0, v1

    goto :goto_8

    .line 3732
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_9
        :pswitch_10
        :pswitch_17
    .end packed-switch

    .line 3746
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_1e
        :pswitch_2e
        :pswitch_3a
    .end packed-switch
.end method

.method private updateProfileConnectionState(III)V
    .registers 14
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 3626
    const/4 v2, 0x1

    .line 3627
    .local v2, numDev:I
    move v1, p2

    .line 3628
    .local v1, newHashState:I
    const/4 v4, 0x1

    .line 3640
    .local v4, update:Z
    iget-object v5, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 3641
    .local v3, stateNumDev:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_27

    .line 3642
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3643
    .local v0, currHashState:I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3645
    if-ne p2, v0, :cond_40

    .line 3646
    add-int/lit8 v2, v2, 0x1

    .line 3665
    .end local v0           #currHashState:I
    :cond_27
    :goto_27
    if-eqz v4, :cond_3f

    .line 3666
    iget-object v5, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3669
    :cond_3f
    return-void

    .line 3647
    .restart local v0       #currHashState:I
    :cond_40
    if-eq p2, v8, :cond_46

    if-ne p2, v7, :cond_48

    if-eq v0, v8, :cond_48

    .line 3650
    :cond_46
    const/4 v2, 0x1

    goto :goto_27

    .line 3651
    :cond_48
    if-ne v2, v7, :cond_4e

    if-ne p3, v0, :cond_4e

    .line 3652
    const/4 v4, 0x1

    goto :goto_27

    .line 3653
    :cond_4e
    if-le v2, v7, :cond_5a

    if-ne p3, v0, :cond_5a

    .line 3654
    add-int/lit8 v2, v2, -0x1

    .line 3656
    if-eq v0, v8, :cond_58

    if-ne v0, v7, :cond_27

    .line 3658
    :cond_58
    move v1, v0

    goto :goto_27

    .line 3661
    :cond_5a
    const/4 v4, 0x0

    goto :goto_27
.end method

.method private declared-synchronized updateSdpRecords()V
    .registers 7

    .prologue
    const/4 v1, 0x2

    .line 783
    monitor-enter p0

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v2, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 792
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_25
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-direct {p0, v2}, Landroid/server/BluetoothService;->addReservedSdpRecords(Ljava/util/ArrayList;)V

    .line 802
    iget-boolean v3, p0, Landroid/server/BluetoothService;->btNAPAvailable:Z

    if-eqz v3, :cond_3b

    const/4 v3, 0x1

    const-string/jumbo v4, "nap"

    const-string/jumbo v5, "pan1"

    invoke-virtual {p0, v3, v4, v5}, Landroid/server/BluetoothService;->setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 806
    :cond_3b
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mMapAvailable:Z

    if-eqz v3, :cond_55

    .line 807
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v1, :cond_4a

    const/4 v1, 0x4

    .line 808
    .local v1, supportedTypes:I
    :cond_4a
    const-string v3, "Android SMS"

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-direct {p0, v3, v4, v1, v5}, Landroid/server/BluetoothService;->addMapServiceRecordNative(Ljava/lang/String;III)I

    move-result v3

    iput v3, p0, Landroid/server/BluetoothService;->mMapRecordHandle:I

    .line 811
    .end local v1           #supportedTypes:I
    :cond_55
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mSapAvailable:Z

    if-eqz v3, :cond_64

    .line 812
    const-string v3, "BluetoothService"

    const-string/jumbo v4, "mSapAvailable is true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {p0}, Landroid/server/BluetoothService;->addSapServiceRecordNative()Z

    .line 817
    :cond_64
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    iget-boolean v3, p0, Landroid/server/BluetoothService;->btNAPAvailable:Z

    if-eqz v3, :cond_77

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_77
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/ParcelUuid;

    iput-object v3, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    .line 826
    const/4 v0, 0x0

    .local v0, i:I
    :goto_80
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_93

    .line 827
    iget-object v4, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    aput-object v3, v4, v0
    :try_end_90
    .catchall {:try_start_2 .. :try_end_90} :catchall_95

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 829
    :cond_93
    monitor-exit p0

    return-void

    .line 783
    .end local v0           #i:I
    .end local v2           #uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :catchall_95
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private validateProfileConnectionState(I)Z
    .registers 4
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 3710
    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private declared-synchronized writeDockPin()Z
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 375
    monitor-enter p0

    const/4 v1, 0x0

    .line 377
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_4
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/switch/dock/bt_pin"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_60
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_10} :catch_3e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_50

    .line 381
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_10
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 383
    .local v3, pin:I
    const-string v6, "%04d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    .line 384
    iget-object v6, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_70
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_36} :catch_76
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_36} :catch_73

    .line 391
    if-eqz v2, :cond_3b

    .line 393
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_79
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_6a

    :cond_3b
    :goto_3b
    move-object v1, v2

    .line 400
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #pin:I
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :goto_3c
    monitor-exit p0

    return v4

    .line 386
    :catch_3e
    move-exception v0

    .line 387
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3f
    :try_start_3f
    const-string v4, "BluetoothService"

    const-string v6, "FileNotFoundException while trying to write dock pairing pin"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_60

    .line 391
    if-eqz v1, :cond_4b

    .line 393
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_67
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_6c

    .line 399
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_4b
    :goto_4b
    const/4 v4, 0x0

    :try_start_4c
    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_67

    move v4, v5

    .line 400
    goto :goto_3c

    .line 388
    :catch_50
    move-exception v0

    .line 389
    .local v0, e:Ljava/io/IOException;
    :goto_51
    :try_start_51
    const-string v4, "BluetoothService"

    const-string v6, "IOException while while trying to write dock pairing pin"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_60

    .line 391
    if-eqz v1, :cond_4b

    .line 393
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_67
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_4b

    .line 394
    :catch_5e
    move-exception v4

    goto :goto_4b

    .line 391
    .end local v0           #e:Ljava/io/IOException;
    :catchall_60
    move-exception v4

    :goto_61
    if-eqz v1, :cond_66

    .line 393
    :try_start_63
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_6e

    .line 396
    :cond_66
    :goto_66
    :try_start_66
    throw v4
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    .line 375
    :catchall_67
    move-exception v4

    :goto_68
    monitor-exit p0

    throw v4

    .line 394
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catch_6a
    move-exception v5

    goto :goto_3b

    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #pin:I
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :catch_6c
    move-exception v4

    goto :goto_4b

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_6e
    move-exception v5

    goto :goto_66

    .line 391
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_70
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_61

    .line 388
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_73
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_51

    .line 386
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_76
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3f

    .line 375
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catchall_79
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_68
.end method


# virtual methods
.method addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;
    .registers 9
    .parameter "address"
    .parameter "setTrust"

    .prologue
    .line 3491
    new-instance v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothDeviceProfileState;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;Z)V

    .line 3493
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3494
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->start()V

    .line 3495
    return-object v0
.end method

.method public declared-synchronized addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    .registers 16
    .parameter "serviceName"
    .parameter "uuid"
    .parameter "channel"
    .parameter "b"

    .prologue
    const/4 v10, -0x1

    .line 2457
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_b3

    move-result v0

    if-nez v0, :cond_14

    move v9, v10

    .line 2487
    :goto_12
    monitor-exit p0

    return v9

    .line 2460
    :cond_14
    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1f

    const/16 v0, 0x1e

    if-le p3, v0, :cond_21

    :cond_1f
    move v9, v10

    .line 2462
    goto :goto_12

    .line 2464
    :cond_21
    :try_start_21
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2465
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to register a reserved UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2466
    goto :goto_12

    .line 2468
    :cond_43
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    int-to-short v6, p3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothService;->addRfcommServiceRecordNative(Ljava/lang/String;JJS)I

    move-result v9

    .line 2471
    .local v9, handle:I
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    if-ne v9, v10, :cond_7b

    move v9, v10

    .line 2473
    goto :goto_12

    .line 2476
    :cond_7b
    new-instance v7, Landroid/server/BluetoothService$ServiceRecordClient;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/server/BluetoothService$ServiceRecordClient;-><init>(Landroid/server/BluetoothService$1;)V

    .line 2477
    .local v7, client:Landroid/server/BluetoothService$ServiceRecordClient;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    .line 2478
    iput-object p4, v7, Landroid/server/BluetoothService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    .line 2479
    new-instance v0, Landroid/server/BluetoothService$Reaper;

    iget v1, v7, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    const/16 v2, 0xa

    invoke-direct {v0, p0, v9, v1, v2}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;III)V

    iput-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    .line 2480
    iget-object v0, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catchall {:try_start_21 .. :try_end_9e} :catchall_b3

    .line 2482
    :try_start_9e
    iget-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_b3
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a4} :catch_a6

    goto/16 :goto_12

    .line 2483
    :catch_a6
    move-exception v8

    .line 2484
    .local v8, e:Landroid/os/RemoteException;
    :try_start_a7
    const-string v0, "BluetoothService"

    const-string v1, ""

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2485
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_b3

    goto/16 :goto_12

    .line 2457
    .end local v7           #client:Landroid/server/BluetoothService$ServiceRecordClient;
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v9           #handle:I
    :catchall_b3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native addSapServiceRecordNative()Z
.end method

.method public allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 9
    .parameter "device"
    .parameter "allow"

    .prologue
    const/4 v2, 0x0

    .line 3252
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3254
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3255
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 3266
    :goto_14
    return v2

    .line 3259
    :cond_15
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3260
    .local v1, data:Ljava/lang/Integer;
    if-nez v1, :cond_3a

    .line 3261
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingProfileConnect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3265
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingProfileConnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 3266
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, p2, v2}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z

    move-result v2

    goto :goto_14
.end method

.method allowIncomingTethering()Z
    .registers 7

    .prologue
    .line 3068
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v2

    .line 3069
    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3070
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 3071
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3072
    const/4 v1, 0x0

    monitor-exit v2

    .line 3074
    :goto_24
    return v1

    :cond_25
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v1}, Landroid/server/BluetoothPanProfileHandler;->allowIncomingTethering()Z

    move-result v1

    monitor-exit v2

    goto :goto_24

    .line 3075
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method declared-synchronized attemptAutoPair(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 905
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 907
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    .line 908
    const-string v0, "0000"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    .line 909
    const/4 v0, 0x1

    .line 911
    :goto_20
    monitor-exit p0

    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_20

    .line 905
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelBondProcess(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 1476
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_34

    move-result v1

    if-nez v1, :cond_13

    .line 1491
    :cond_11
    :goto_11
    monitor-exit p0

    return v0

    .line 1480
    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1483
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1484
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_11

    .line 1488
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 1490
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->cancelDeviceCreationNative(Ljava/lang/String;)Z
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_34

    .line 1491
    const/4 v0, 0x1

    goto :goto_11

    .line 1476
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelDiscovery()Z
    .registers 4

    .prologue
    .line 1355
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1359
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->stopDiscoveryNative()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 1355
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelPairingUserInput(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2331
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_3b

    move-result v2

    if-nez v2, :cond_13

    .line 2349
    :cond_11
    :goto_11
    monitor-exit p0

    return v1

    .line 2335
    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2338
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-virtual {v2, p1, v3, v4}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 2340
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2341
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2342
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_3e

    .line 2344
    const-string v2, "BluetoothService"

    const-string v3, "cancelUserInputNative() called but no native data available, ignoring. Maybe the PasskeyAgent Request was already cancelled by the remote or by bluez.\n"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_3b

    goto :goto_11

    .line 2331
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2349
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->cancelPairingUserInputNative(Ljava/lang/String;I)Z
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    move-result v1

    goto :goto_11
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z
    .registers 11
    .parameter "on"
    .parameter "callback"
    .parameter "binder"

    .prologue
    const/4 v3, 0x0

    .line 2547
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2551
    .local v1, pid:I
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 2552
    if-eqz p1, :cond_3b

    .line 2553
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2561
    :cond_25
    :goto_25
    if-eqz p3, :cond_32

    .line 2563
    :try_start_27
    new-instance v4, Landroid/server/BluetoothService$Reaper;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v1, v5}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;II)V

    const/4 v5, 0x0

    invoke-interface {p3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_48

    .line 2571
    :cond_32
    if-eqz p1, :cond_51

    .line 2572
    const/4 v2, 0x3

    .line 2577
    .local v2, type:I
    :goto_35
    iget-object v3, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v3, v2, p2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2578
    const/4 v3, 0x1

    .end local v2           #type:I
    :cond_3b
    :goto_3b
    return v3

    .line 2557
    :cond_3c
    if-nez p1, :cond_25

    .line 2558
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 2564
    :catch_48
    move-exception v0

    .line 2565
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 2574
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_51
    const/4 v2, 0x4

    .restart local v2       #type:I
    goto :goto_35
.end method

.method declared-synchronized cleanNativeAfterShutoffBluetooth()V
    .registers 2

    .prologue
    .line 618
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterProperties;->clear()V

    .line 619
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disableNative()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 620
    monitor-exit p0

    return-void

    .line 618
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized cleanupAfterFinishDisable()V
    .registers 6

    .prologue
    .line 564
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v4}, Landroid/server/BluetoothAdapterProperties;->clear()V

    .line 566
    iget-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 567
    .local v3, srHandle:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_10

    .line 564
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #srHandle:Ljava/lang/Integer;
    :catchall_24
    move-exception v4

    monitor-exit p0

    throw v4

    .line 569
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_27
    :try_start_27
    iget-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 571
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    .line 572
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    .line 573
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 574
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 575
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    .line 576
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    .line 580
    iget-object v4, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v4}, Landroid/server/BluetoothBondState;->close()V

    .line 581
    invoke-direct {p0}, Landroid/server/BluetoothService;->closeProfileProxy()V

    .line 585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_24

    move-result-wide v1

    .line 587
    .local v1, ident:J
    :try_start_4a
    iget-object v4, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOff()V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_59
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_54

    .line 590
    :try_start_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_24

    .line 592
    :goto_52
    monitor-exit p0

    return-void

    .line 588
    :catch_54
    move-exception v4

    .line 590
    :try_start_55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_52

    :catchall_59
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_24
.end method

.method clearApplicationStateChangeTracker()V
    .registers 2

    .prologue
    .line 2586
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2587
    return-void
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .registers 7
    .parameter "device"
    .parameter "config"
    .parameter "channelType"

    .prologue
    .line 3323
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3325
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3326
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3328
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .registers 6
    .parameter "device"
    .parameter "config"

    .prologue
    .line 3304
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3307
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3309
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public connectHeadset(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3423
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_b

    .line 3433
    :cond_a
    :goto_a
    return v2

    .line 3425
    :cond_b
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3426
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_a

    .line 3427
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3428
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 3429
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3430
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    move v2, v3

    .line 3431
    goto :goto_a
.end method

.method public connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .parameter "device"

    .prologue
    .line 3157
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3160
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v2

    .line 3161
    :try_start_18
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 3162
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .parameter "device"

    .prologue
    .line 3166
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3167
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3168
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method native connectInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .parameter "device"

    .prologue
    .line 3101
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3103
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v2

    .line 3104
    :try_start_c
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3105
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 3106
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3107
    const/4 v1, 0x0

    monitor-exit v2

    .line 3109
    :goto_2d
    return v1

    :cond_2e
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothPanProfileHandler;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    monitor-exit v2

    goto :goto_2d

    .line 3111
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_36

    throw v1
.end method

.method native connectPanDeviceNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public connectSink(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 3451
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_a

    .line 3473
    :cond_9
    :goto_9
    return v3

    .line 3455
    :cond_a
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3456
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/app/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/app/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v4

    if-nez v4, :cond_34

    .line 3461
    :cond_2c
    const-string v4, "BluetoothService"

    const-string v5, "MDM: SPP or A2DP profile is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3465
    :cond_34
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3466
    .local v2, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v2, :cond_9

    .line 3467
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3468
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 3469
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3470
    iget-object v3, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3471
    const/4 v3, 0x1

    goto :goto_9
.end method

.method public declared-synchronized createBond(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 1417
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_21

    move-result v1

    if-nez v1, :cond_a

    .line 1426
    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    .line 1419
    :cond_a
    const v1, 0xea60

    :try_start_d
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->createPairedDeviceNative(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1423
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_21

    .line 1426
    const/4 v0, 0x1

    goto :goto_8

    .line 1417
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createBondOutOfBand(Ljava/lang/String;[B[B)Z
    .registers 6
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    const/4 v0, 0x0

    .line 1431
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v1

    if-nez v1, :cond_a

    .line 1441
    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    .line 1433
    :cond_a
    const v1, 0xea60

    :try_start_d
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1437
    invoke-virtual {p0, p1, p2, p3}, Landroid/server/BluetoothService;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    .line 1438
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_24

    .line 1441
    const/4 v0, 0x1

    goto :goto_8

    .line 1431
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native createChannelNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method native destroyChannelNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public disable()Z
    .registers 2

    .prologue
    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public disable(Z)Z
    .registers 4
    .parameter "saveSetting"

    .prologue
    .line 493
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 494
    new-instance v0, Landroid/server/BluetoothService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothService$1;-><init>(Landroid/server/BluetoothService;)V

    invoke-virtual {v0}, Landroid/server/BluetoothService$1;->start()V

    .line 499
    const/4 v0, 0x1

    .line 502
    :goto_f
    return v0

    .line 501
    :cond_10
    const-string v0, "BluetoothService"

    const-string v1, "bt disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->startdisable(Z)Z

    move-result v0

    goto :goto_f
.end method

.method native disableNative()I
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .registers 7
    .parameter "device"
    .parameter "config"
    .parameter "id"

    .prologue
    .line 3333
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3336
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3337
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method declared-synchronized disconnectDevices()V
    .registers 4

    .prologue
    .line 525
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 526
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_9

    .line 525
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2

    .line 529
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 530
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_19

    goto :goto_24

    .line 532
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_34
    monitor-exit p0

    return-void
.end method

.method public disconnectHeadset(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 3437
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    .line 3447
    :cond_9
    :goto_9
    return v2

    .line 3439
    :cond_a
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3440
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_9

    .line 3441
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3442
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3443
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3444
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3445
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .parameter "device"

    .prologue
    .line 3172
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3175
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v2

    .line 3176
    :try_start_18
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 3177
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .parameter "device"

    .prologue
    .line 3181
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3182
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3183
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method native disconnectInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 3130
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3133
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3134
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method native disconnectPanDeviceNative(Ljava/lang/String;)Z
.end method

.method native disconnectPanServerDeviceNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public disconnectSimAccessClient()Z
    .registers 4

    .prologue
    .line 3201
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    const-string v0, "BluetoothService"

    const-string v1, "disconnectSimAccessClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disconnectSimAccessClientNative()Z

    move-result v0

    return v0
.end method

.method public disconnectSimAccessClientImmediate()Z
    .registers 4

    .prologue
    .line 3213
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    const-string v0, "BluetoothService"

    const-string v1, "disconnectSimAccessClientImmediate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disconnectSimAccessClientImmediateNative()Z

    move-result v0

    return v0
.end method

.method native disconnectSimAccessClientImmediateNative()Z
.end method

.method native disconnectSimAccessClientNative()Z
.end method

.method public disconnectSink(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 3477
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    .line 3487
    :cond_9
    :goto_9
    return v2

    .line 3479
    :cond_a
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3480
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_9

    .line 3481
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3482
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x34

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3483
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3484
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3485
    const/4 v2, 0x1

    goto :goto_9
.end method

.method native discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2759
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_9

    .line 2784
    :goto_8
    return-void

    .line 2763
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAirplaneSensitive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAirplaneToggleable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isDiscovering() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2770
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2772
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2774
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2777
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpKnownDevices(Ljava/io/PrintWriter;)V

    .line 2778
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpAclConnectedDevices(Ljava/io/PrintWriter;)V

    .line 2779
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpHeadsetService(Ljava/io/PrintWriter;)V

    .line 2780
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpInputDeviceProfile(Ljava/io/PrintWriter;)V

    .line 2781
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpPanProfile(Ljava/io/PrintWriter;)V

    .line 2782
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpApplicationServiceRecords(Ljava/io/PrintWriter;)V

    .line 2783
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpProfileState(Ljava/io/PrintWriter;)V

    goto/16 :goto_8
.end method

.method public enable()Z
    .registers 2

    .prologue
    .line 624
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(Z)Z
    .registers 10
    .parameter "saveSetting"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 637
    monitor-enter p0

    :try_start_3
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 638
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v5

    if-nez v5, :cond_20

    .line 639
    const-string v4, "BluetoothService"

    const-string v5, "MDM: BT is Disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_78

    .line 678
    :cond_1e
    :goto_1e
    monitor-exit p0

    return v3

    .line 644
    :cond_20
    :try_start_20
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    const-string v7, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-boolean v5, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v5, :cond_37

    invoke-direct {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_37

    iget-boolean v5, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    if-eqz v5, :cond_1e

    .line 653
    :cond_37
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 655
    .local v2, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_7b

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v5

    if-nez v5, :cond_7b

    .line 657
    const-string v4, "BluetoothService"

    const-string v5, "Exchange IT Policy has disabled Bluetooth. Cannot enable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v4, 0x0

    sput v4, Landroid/server/BluetoothService;->mPolicy:I

    .line 659
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 661
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 662
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_77
    .catchall {:try_start_20 .. :try_end_77} :catchall_78

    goto :goto_1e

    .line 637
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :catchall_78
    move-exception v3

    monitor-exit p0

    throw v3

    .line 677
    .restart local v0       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v2       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_7b
    :try_start_7b
    iget-object v3, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_78

    move v3, v4

    .line 678
    goto :goto_1e
.end method

.method native enableNative()I
.end method

.method public declared-synchronized fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    .registers 11
    .parameter "address"
    .parameter "uuid"
    .parameter "callback"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2170
    monitor-enter p0

    :try_start_3
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_65

    move-result v4

    if-nez v4, :cond_14

    .line 2205
    :cond_12
    :goto_12
    monitor-exit p0

    return v1

    .line 2173
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2177
    new-instance v2, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v2, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 2178
    .local v2, service:Landroid/server/BluetoothService$RemoteService;
    if-eqz p2, :cond_29

    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_12

    .line 2184
    :cond_29
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2187
    if-eqz p2, :cond_3d

    .line 2188
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v5, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    move v1, v3

    .line 2190
    goto :goto_12

    .line 2195
    :cond_3f
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    move-result v1

    .line 2197
    .local v1, ret:Z
    iget-object v3, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2198
    if-eqz p2, :cond_54

    .line 2199
    iget-object v3, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v4, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v4, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    :cond_54
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2203
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2204
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_64
    .catchall {:try_start_14 .. :try_end_64} :catchall_65

    goto :goto_12

    .line 2170
    .end local v0           #message:Landroid/os/Message;
    .end local v1           #ret:Z
    .end local v2           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_65
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    :try_start_7
    invoke-direct {p0}, Landroid/server/BluetoothService;->cleanupNativeDataNative()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 456
    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    .line 458
    return-void

    .line 456
    :catchall_e
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    throw v0
.end method

.method declared-synchronized finishDisable()V
    .registers 9

    .prologue
    .line 540
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_2
    iput v5, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    .line 544
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v4, :cond_1d

    aget-object v0, v1, v2

    .line 545
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xa

    const/4 v7, 0x3

    invoke-virtual {v5, v0, v6, v7}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 550
    .end local v0           #address:Ljava/lang/String;
    :cond_1d
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v4, :cond_31

    aget-object v0, v1, v2

    .line 551
    .restart local v0       #address:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->removeProfileState(Ljava/lang/String;)V

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 555
    .end local v0           #address:Ljava/lang/String;
    :cond_31
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 557
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_48

    .line 558
    monitor-exit p0

    return-void

    .line 540
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #len$:I
    :catchall_48
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method native gattConnectDeviceNative(Ljava/lang/String;)Z
.end method

.method public gattDeviceConnect(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    .line 1668
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v1, 0x0

    .line 1682
    :goto_10
    return v1

    .line 1671
    :cond_11
    const-string v2, "BluetoothService"

    const-string v3, "gattDeviceConnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/4 v1, 0x0

    .line 1677
    .local v1, status:Z
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    .local v0, devicePath:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 1679
    :try_start_20
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->gattConnectDeviceNative(Ljava/lang/String;)Z

    move-result v1

    .line 1681
    monitor-exit v3

    goto :goto_10

    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public gattDeviceDisconnect(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1686
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v3

    if-nez v3, :cond_12

    move v1, v2

    .line 1700
    :goto_11
    return v1

    .line 1689
    :cond_12
    const-string v3, "BluetoothService"

    const-string v4, "gattDeviceDisconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const/4 v1, 0x0

    .line 1691
    .local v1, status:Z
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_24

    move v1, v2

    goto :goto_11

    .line 1695
    :cond_24
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1696
    .local v0, devicePath:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 1697
    :try_start_2b
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->gattDisconnectDeviceNative(Ljava/lang/String;)Z

    move-result v1

    .line 1699
    monitor-exit v3

    goto :goto_11

    :catchall_31
    move-exception v2

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw v2
.end method

.method public gattDeviceDiscoverPrimary(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1704
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v3

    if-nez v3, :cond_12

    move v1, v2

    .line 1717
    :goto_11
    return v1

    .line 1707
    :cond_12
    const/4 v1, 0x0

    .line 1708
    .local v1, status:Z
    const-string v3, "BluetoothService"

    const-string v4, " gattDeviceDisconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_24

    move v1, v2

    goto :goto_11

    .line 1712
    :cond_24
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1713
    .local v0, devicePath:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 1714
    :try_start_2b
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->gattDiscoverPrimaryServiceNative(Ljava/lang/String;)Z

    move-result v1

    .line 1716
    monitor-exit v3

    goto :goto_11

    :catchall_31
    move-exception v2

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw v2
.end method

.method native gattDisconnectDeviceNative(Ljava/lang/String;)Z
.end method

.method native gattDiscoverCharNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method native gattDiscoverPrimaryServiceNative(Ljava/lang/String;)Z
.end method

.method public gattDiscoveryCharacteristics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "address"
    .parameter "servicePath"
    .parameter "charUUID"

    .prologue
    .line 1907
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gattCharacteristicsDiscovery "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v0, 0x0

    .line 1914
    :goto_28
    return v0

    .line 1910
    :cond_29
    const/4 v0, 0x0

    .line 1911
    .local v0, ret:Z
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 1912
    :try_start_2d
    invoke-virtual {p0, p2, p3}, Landroid/server/BluetoothService;->gattDiscoverCharNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1913
    monitor-exit v2

    goto :goto_28

    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_33

    throw v1
.end method

.method public gattGetCharProperties(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "address"
    .parameter "charPath"

    .prologue
    .line 1927
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v1, 0x0

    .line 1933
    :goto_10
    return-object v1

    .line 1929
    :cond_11
    const/4 v1, 0x0

    .line 1930
    .local v1, charProperties:[Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 1931
    :try_start_15
    invoke-virtual {p0, p2}, Landroid/server/BluetoothService;->gattGetCharPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 1932
    monitor-exit v3

    goto :goto_10

    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v2
.end method

.method native gattGetCharPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method public gattRegisterCharWatcher(Ljava/lang/String;)Z
    .registers 6
    .parameter "servicePath"

    .prologue
    .line 1948
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    .line 1954
    :goto_10
    return v0

    .line 1950
    :cond_11
    const/4 v0, 0x0

    .line 1951
    .local v0, ret:Z
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 1952
    :try_start_15
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->gattRegisterCharWatcherNative(Ljava/lang/String;)Z

    move-result v0

    .line 1953
    monitor-exit v2

    goto :goto_10

    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public gattSetCharProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 13
    .parameter "address"
    .parameter "type"
    .parameter "charPath"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 1939
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1945
    :goto_f
    return-void

    .line 1941
    :cond_10
    array-length v5, p5

    .line 1942
    .local v5, len:I
    iget-object v6, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 1943
    :try_start_19
    invoke-virtual/range {v0 .. v5}, Landroid/server/BluetoothService;->gattSetCharPropertyNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Z

    .line 1944
    monitor-exit v6

    goto :goto_f

    :catchall_1e
    move-exception v0

    monitor-exit v6
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method native gattSetCharPropertyNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Z
.end method

.method public gattUnregisterCharWatcher(Ljava/lang/String;)Z
    .registers 6
    .parameter "servicePath"

    .prologue
    .line 1958
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    .line 1964
    :goto_10
    return v0

    .line 1960
    :cond_11
    const/4 v0, 0x0

    .line 1961
    .local v0, ret:Z
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 1962
    :try_start_15
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->gattUnregisterCharWatcherNative(Ljava/lang/String;)Z

    move-result v0

    .line 1963
    monitor-exit v2

    goto :goto_10

    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getAdapterConnectionState()I
    .registers 2

    .prologue
    .line 3608
    iget v0, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    return v0
.end method

.method native getAdapterPathNative()Ljava/lang/String;
.end method

.method getAdapterProperties()Landroid/server/BluetoothAdapterProperties;
    .registers 2

    .prologue
    .line 1196
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    return-object v0
.end method

.method native getAdapterPropertiesNative()[Ljava/lang/Object;
.end method

.method public declared-synchronized getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1216
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v0, "Address"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1216
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "objectPath"

    .prologue
    const/4 v2, 0x0

    .line 3021
    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v3}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 3022
    .local v0, adapterObjectPath:Ljava/lang/String;
    if-eqz v0, :cond_b

    if-nez p1, :cond_34

    .line 3023
    :cond_b
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  or deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    :goto_33
    return-object v2

    .line 3027
    :cond_34
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 3028
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  is not a prefix of deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bluetoothd crashed ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 3033
    :cond_63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3034
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_76

    const/16 v2, 0x5f

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    .line 3036
    :cond_76
    const-string v3, "BluetoothService"

    const-string v4, "getAddressFromObjectPath: Address being returned is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public getAddressFromObjectPathForLE(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "objectPath"

    .prologue
    .line 3017
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApplicationStateChangeCallbacks()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2590
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .parameter "address"

    .prologue
    .line 3593
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getAuthorizationAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3594
    .local v0, data:Ljava/lang/Integer;
    return-object v0
.end method

.method public getBluetoothState()I
    .registers 4

    .prologue
    .line 470
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    return v0
.end method

.method getBluetoothStateInternal()I
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothAdapterState()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 1540
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    move-result v0

    if-nez v0, :cond_14

    .line 1542
    const/high16 v0, -0x8000

    .line 1544
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1f

    move-result v0

    goto :goto_12

    .line 1540
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native getChannelApplicationNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native getChannelFdNative(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public declared-synchronized getConnectedDeviceCount()I
    .registers 4

    .prologue
    .line 1178
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectedDeviceCount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return v0

    .line 1178
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectedHealthDevices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3382
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3385
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothHealthProfileHandler;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3386
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getConnectedInputDevices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3194
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3196
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothInputProfileHandler;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3197
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getConnectedPanDevices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3115
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3116
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3117
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3118
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;
    .registers 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method getDeviceProperties()Landroid/server/BluetoothDeviceProperties;
    .registers 2

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    return-object v0
.end method

.method public getDiscoverableTimeout()I
    .registers 5

    .prologue
    .line 1308
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v1, "DiscoverableTimeout"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, timeout:Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 1311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1313
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method declared-synchronized getDockPin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGattConnectionState(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    .line 1977
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 1979
    :try_start_c
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "GattConnected"

    invoke-virtual {v1, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1980
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_19

    .line 1981
    const/4 v1, 0x0

    monitor-exit v2

    .line 1983
    :goto_18
    return v1

    :cond_19
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v2

    goto :goto_18

    .line 1985
    .end local v0           #val:Ljava/lang/String;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 3374
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3377
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3378
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 5
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3391
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3394
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3396
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getIncomingState(Ljava/lang/String;)Landroid/util/Pair;
    .registers 3
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3780
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3781
    invoke-direct {p0}, Landroid/server/BluetoothService;->createIncomingConnectionStateFile()V

    .line 3782
    invoke-direct {p0}, Landroid/server/BluetoothService;->readIncomingConnectionState()V

    .line 3784
    :cond_e
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 3187
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3189
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3190
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 3228
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3230
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3231
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getInputDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 5
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3220
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3222
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3223
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method getKnownDevices()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 3507
    const/4 v0, 0x0

    .line 3508
    .local v0, bonds:[Ljava/lang/String;
    const-string v2, "Devices"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3509
    .local v1, val:Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 3510
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3512
    :cond_10
    return-object v0
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .parameter "device"
    .parameter "config"

    .prologue
    .line 3342
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3344
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3345
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3346
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method native getMainChannelNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized getMapTrustState(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2073
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2074
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_25

    .line 2082
    :cond_11
    :goto_11
    monitor-exit p0

    return v1

    .line 2078
    :cond_13
    :try_start_13
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "MapTrusted"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2079
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 2082
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25

    move-result v1

    goto :goto_11

    .line 2073
    .end local v0           #val:Ljava/lang/String;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1222
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v0, "Name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1222
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNumberOfApplicationStateChangeTrackers()I
    .registers 2

    .prologue
    .line 2594
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "address"

    .prologue
    .line 3041
    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v1}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 3042
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 3043
    const-string v1, "BluetoothService"

    const-string v2, "Error: Object Path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    const/4 v1, 0x0

    .line 3047
    :goto_10
    return-object v1

    .line 3046
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3047
    goto :goto_10
.end method

.method public getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 3094
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3096
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3097
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getPanDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 5
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3123
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3125
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3126
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 955
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0}, Landroid/server/BluetoothBondState;->getPendingOutgoingBonding()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProfileConnectionState(I)I
    .registers 6
    .parameter "profile"

    .prologue
    .line 3612
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3614
    iget-object v1, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3615
    .local v0, state:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_19

    const/4 v1, 0x0

    .line 3617
    :goto_18
    return v1

    :cond_19
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_18
.end method

.method getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "checkState"

    .prologue
    const/4 v0, 0x0

    .line 1186
    if-eqz p2, :cond_a

    .line 1187
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1192
    :cond_9
    :goto_9
    return-object v0

    .line 1188
    :cond_a
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1192
    :cond_12
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public declared-synchronized getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 1275
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1c

    move-result v0

    if-nez v0, :cond_13

    .line 1277
    const/4 v0, 0x0

    .line 1279
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v1, "Alias"

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    move-result-object v0

    goto :goto_11

    .line 1275
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteClass(Ljava/lang/String;)I
    .registers 7
    .parameter "address"

    .prologue
    const/high16 v1, -0x100

    .line 2118
    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2119
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_27

    .line 2126
    :cond_12
    :goto_12
    monitor-exit p0

    return v1

    .line 2122
    :cond_14
    :try_start_14
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Class"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2123
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 2126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_27

    move-result v1

    goto :goto_12

    .line 2118
    .end local v0           #val:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3
    .parameter "address"

    .prologue
    .line 987
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 1564
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 1567
    :goto_7
    return-object v1

    .line 1566
    :cond_8
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1567
    .local v0, objectPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    goto :goto_7
.end method

.method public getRemoteDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "address"

    .prologue
    .line 1839
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1841
    const/4 v0, 0x0

    .line 1847
    :goto_10
    return-object v0

    .line 1843
    :cond_11
    const/4 v0, 0x0

    .line 1844
    .local v0, retType:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 1845
    :try_start_15
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Type"

    invoke-virtual {v1, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1846
    monitor-exit v2

    goto :goto_10

    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getRemoteHDPDataTypeList(Landroid/bluetooth/BluetoothDevice;)[I
    .registers 5
    .parameter "device"

    .prologue
    .line 3314
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3317
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    iget-object v0, v0, Landroid/server/BluetoothHealthProfileHandler;->HealthSdpDataTypes:[I

    monitor-exit v1

    return-object v0

    .line 3318
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 1258
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1c

    move-result v0

    if-nez v0, :cond_13

    .line 1260
    const/4 v0, 0x0

    .line 1262
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v1, "Name"

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    move-result-object v0

    goto :goto_11

    .line 1258
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemotePrimaryService(Ljava/lang/String;I)Z
    .registers 14
    .parameter "address"
    .parameter "UUID"

    .prologue
    const/4 v7, 0x0

    .line 1576
    monitor-enter p0

    :try_start_2
    iget-object v8, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH_ADMIN"

    const-string v10, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_d5

    move-result v8

    if-nez v8, :cond_13

    .line 1623
    :cond_11
    :goto_11
    monitor-exit p0

    return v7

    .line 1581
    :cond_13
    :try_start_13
    const-string v8, "BluetoothService"

    const-string v9, "getRemotePrimaryService"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1583
    .local v2, properties:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getDeviceProperties()Landroid/server/BluetoothDeviceProperties;

    move-result-object v0

    .line 1584
    .local v0, deviceProperties:Landroid/server/BluetoothDeviceProperties;
    const/4 v5, 0x0

    .line 1586
    .local v5, uuidStrings:[Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 1587
    invoke-virtual {v0, p1, v2}, Landroid/server/BluetoothDeviceProperties;->addProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    .line 1592
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteServicePaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1594
    .local v3, servicePaths:[Ljava/lang/String;
    if-eqz v3, :cond_11

    .line 1597
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f
    array-length v8, v3

    if-ge v1, v8, :cond_5c

    .line 1598
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Service total Path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    aget-object v8, v3, v1

    invoke-virtual {p0, v8}, Landroid/server/BluetoothService;->getRemoteServiceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1600
    .local v4, serviceProperties:[Ljava/lang/String;
    if-eqz v4, :cond_59

    .line 1601
    aget-object v8, v3, v1

    invoke-virtual {v0, v8, v4}, Landroid/server/BluetoothDeviceProperties;->addRemoteServiceProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    .line 1597
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1605
    .end local v4           #serviceProperties:[Ljava/lang/String;
    :cond_5c
    array-length v8, v3

    new-array v5, v8, [Ljava/lang/String;

    .line 1606
    const/4 v1, 0x0

    :goto_60
    array-length v8, v3

    if-ge v1, v8, :cond_d8

    .line 1607
    aget-object v8, v3, v1

    const-string v9, "UUID"

    invoke-virtual {v0, v8, v9}, Landroid/server/BluetoothDeviceProperties;->getServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    .line 1609
    aget-object v8, v5, v1

    if-eqz v8, :cond_b4

    .line 1610
    aget-object v8, v5, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_97

    .line 1611
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    .line 1616
    :cond_97
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " uuidString -->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 1613
    :cond_b4
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uuidStrings["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] is null in getRemotePrimaryService()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_13 .. :try_end_d3} :catchall_d5

    goto/16 :goto_11

    .line 1576
    .end local v0           #deviceProperties:Landroid/server/BluetoothDeviceProperties;
    .end local v1           #i:I
    .end local v2           #properties:[Ljava/lang/String;
    .end local v3           #servicePaths:[Ljava/lang/String;
    .end local v5           #uuidStrings:[Ljava/lang/String;
    :catchall_d5
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1619
    .restart local v0       #deviceProperties:Landroid/server/BluetoothDeviceProperties;
    .restart local v1       #i:I
    .restart local v2       #properties:[Ljava/lang/String;
    .restart local v3       #servicePaths:[Ljava/lang/String;
    .restart local v5       #uuidStrings:[Ljava/lang/String;
    :cond_d8
    :try_start_d8
    array-length v7, v5

    new-array v6, v7, [Landroid/os/ParcelUuid;

    .line 1620
    .local v6, uuids:[Landroid/os/ParcelUuid;
    const/4 v1, 0x0

    :goto_dc
    array-length v7, v5

    if-ge v1, v7, :cond_ea

    .line 1621
    aget-object v7, v5, v1

    invoke-static {v7}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v7

    aput-object v7, v6, v1

    .line 1620
    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    .line 1622
    :cond_ea
    invoke-virtual {p0, p1, v6}, Landroid/server/BluetoothService;->sendPrimaryUuidIntent(Ljava/lang/String;[Landroid/os/ParcelUuid;)V
    :try_end_ed
    .catchall {:try_start_d8 .. :try_end_ed} :catchall_d5

    .line 1623
    const/4 v7, 0x1

    goto/16 :goto_11
.end method

.method public getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .registers 8
    .parameter "address"
    .parameter "uuid"

    .prologue
    const/4 v1, -0x1

    .line 2219
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2234
    :cond_10
    :goto_10
    return v1

    .line 2222
    :cond_11
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2223
    const/high16 v1, -0x8000

    goto :goto_10

    .line 2226
    :cond_1a
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceProperties;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2227
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 2231
    :cond_2a
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2232
    .local v0, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_10

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2233
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_10
.end method

.method public declared-synchronized getRemoteServiceCharPaths(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter "servicePath"

    .prologue
    .line 1852
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const-string v4, "BluetoothService"

    const-string v5, "getRemoteCharPaths"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v5, "Characteristics"

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothDeviceProperties;->getServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_33

    move-result-object v3

    .line 1855
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_1e

    const/4 v2, 0x0

    .line 1865
    :cond_1c
    monitor-exit p0

    return-object v2

    .line 1857
    :cond_1e
    const/4 v1, 0x0

    .line 1859
    .local v1, objectPathString:[Ljava/lang/String;
    :try_start_1f
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1860
    array-length v4, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 1862
    .local v2, objectPaths:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    array-length v4, v2

    if-ge v0, v4, :cond_1c

    .line 1863
    aget-object v4, v1, v0

    aput-object v4, v2, v0
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_33

    .line 1862
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1852
    .end local v0           #i:I
    .end local v1           #objectPathString:[Ljava/lang/String;
    .end local v2           #objectPaths:[Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :catchall_33
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getRemoteServicePaths(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1627
    const-string v4, "BluetoothService"

    const-string v5, " getRemoteServicePaths"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1644
    :cond_17
    return-object v2

    .line 1633
    :cond_18
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v5, "Services"

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1634
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_17

    .line 1636
    const/4 v1, 0x0

    .line 1638
    .local v1, objectPathString:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1639
    array-length v4, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 1641
    .local v2, objectPaths:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    array-length v4, v2

    if-ge v0, v4, :cond_17

    .line 1642
    aget-object v4, v1, v0

    aput-object v4, v2, v0

    .line 1641
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d
.end method

.method getRemoteServiceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "servicepath"

    .prologue
    .line 1648
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 1649
    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->gattGetRemoteServicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_7
.end method

.method public getRemoteServiceUUID(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "servicePath"

    .prologue
    .line 1869
    const-string v0, "BluetoothService"

    const-string v1, "getRemoteServiceUUID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v1, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1872
    :try_start_13
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v2, "UUID"

    invoke-virtual {v0, p1, v2}, Landroid/server/BluetoothDeviceProperties;->getServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1873
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public declared-synchronized getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 5
    .parameter "address"

    .prologue
    .line 2137
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 2139
    const/4 v0, 0x0

    .line 2141
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 2137
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRssiValue(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 1918
    const-string v1, "BluetoothService"

    const-string v2, "getRssiValue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1920
    .local v0, devicePath:Ljava/lang/String;
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 1922
    :try_start_17
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getRssiValueNative(Ljava/lang/String;)V

    .line 1923
    monitor-exit v2

    .line 1924
    return-void

    .line 1923
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method native getRssiValueNative(Ljava/lang/String;)V
.end method

.method public declared-synchronized getSapTrustState(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2094
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2095
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_25

    .line 2103
    :cond_11
    :goto_11
    monitor-exit p0

    return v1

    .line 2099
    :cond_13
    :try_start_13
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "SapTrusted"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2100
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 2103
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25

    move-result v1

    goto :goto_11

    .line 2094
    .end local v0           #val:Ljava/lang/String;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getScanMode()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v4, -0x1

    .line 1317
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    const-string v7, "Need BLUETOOTH permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v5

    if-nez v5, :cond_14

    .line 1319
    const/16 v4, 0x14

    .line 1336
    :goto_13
    return v4

    .line 1321
    :cond_14
    const-string v5, "Pairable"

    invoke-virtual {p0, v5, v8}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1322
    .local v3, strPairable:Ljava/lang/String;
    const-string v5, "Discoverable"

    invoke-virtual {p0, v5, v8}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1324
    .local v2, strDiscoverable:Ljava/lang/String;
    if-nez v3, :cond_2b

    .line 1325
    const-string v5, "BluetoothService"

    const-string/jumbo v6, "strPairable is null in getScanMode()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1328
    :cond_2b
    if-nez v2, :cond_36

    .line 1329
    const-string v5, "BluetoothService"

    const-string/jumbo v6, "strDiscoverable is null in getScanMode()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1333
    :cond_36
    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1334
    .local v1, pairable:Z
    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1336
    .local v0, discoverable:Z
    invoke-static {v1, v0}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v4

    goto :goto_13
.end method

.method native getSimAccessPropertiesNative()[Ljava/lang/Object;
.end method

.method public declared-synchronized getTrustState(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2052
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2053
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_25

    .line 2061
    :cond_11
    :goto_11
    monitor-exit p0

    return v1

    .line 2057
    :cond_13
    :try_start_13
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Trusted"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2058
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 2061
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25

    move-result v1

    goto :goto_11

    .line 2052
    .end local v0           #val:Ljava/lang/String;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 8
    .parameter "address"

    .prologue
    .line 2145
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v5, "UUIDs"

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2146
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_c

    const/4 v2, 0x0

    .line 2156
    :cond_b
    return-object v2

    .line 2148
    :cond_c
    const/4 v1, 0x0

    .line 2150
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2151
    array-length v4, v1

    new-array v2, v4, [Landroid/os/ParcelUuid;

    .line 2153
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    array-length v4, v1

    if-ge v0, v4, :cond_b

    .line 2154
    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v2, v0

    .line 2153
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .registers 5

    .prologue
    .line 1228
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string v1, "UUIDs"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    .line 1231
    :goto_13
    return-object v1

    :cond_14
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_13
.end method

.method handleInputDevicePropertyChange(Ljava/lang/String;Z)V
    .registers 5
    .parameter "address"
    .parameter "connected"

    .prologue
    .line 3276
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3277
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothInputProfileHandler;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    .line 3278
    monitor-exit v1

    .line 3279
    return-void

    .line 3278
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 7
    .parameter "device"
    .parameter "state"
    .parameter "role"

    .prologue
    .line 3148
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3149
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 3150
    monitor-exit v1

    .line 3151
    return-void

    .line 3150
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V
    .registers 7
    .parameter "device"
    .parameter "iface"
    .parameter "state"
    .parameter "role"

    .prologue
    .line 3141
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3142
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 3143
    monitor-exit v1

    .line 3144
    return-void

    .line 3143
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized initAfterA2dpRegistration()V
    .registers 2

    .prologue
    .line 447
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v0}, Landroid/server/BluetoothEventLoop;->getProfileProxy()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 448
    monitor-exit p0

    return-void

    .line 447
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initAfterRegistration()V
    .registers 5

    .prologue
    .line 408
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 409
    new-instance v1, Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v1, v2, p0, v3}, Landroid/server/BluetoothAdapterStateMachine;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    .line 410
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v1}, Landroid/server/BluetoothAdapterStateMachine;->start()V

    .line 420
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v1}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothEventLoop()Landroid/server/BluetoothEventLoop;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    .line 423
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v1, "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED_CUSTOM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    const-string v1, "VZW"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 436
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    :cond_44
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_57

    .line 444
    monitor-exit p0

    return-void

    .line 408
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_57
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized initBluetoothAfterTurningOn()V
    .registers 5

    .prologue
    .line 851
    monitor-enter p0

    :try_start_1
    const-string v2, "Discoverable"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, discoverable:Ljava/lang/String;
    const-string v2, "DiscoverableTimeout"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, timeout:Ljava/lang/String;
    if-nez v0, :cond_1a

    .line 855
    const-string v2, "BluetoothService"

    const-string v3, "discoverable is null in initBluetoothAfterTurningOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_5c

    .line 874
    :goto_18
    monitor-exit p0

    return-void

    .line 859
    :cond_1a
    if-nez v1, :cond_37

    .line 860
    :try_start_1c
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "timeout is null in initBluetoothAfterTurningOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v2, "DiscoverableTimeout"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 862
    if-nez v1, :cond_37

    .line 863
    const-string v1, "120"

    .line 864
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "timeout is set 120 in initBluetoothAfterTurningOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_37
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_50

    .line 869
    const-string v2, "Discoverable"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    .line 871
    :cond_50
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v2}, Landroid/server/BluetoothBondState;->initBondState()V

    .line 872
    invoke-direct {p0}, Landroid/server/BluetoothService;->initProfileState()V

    .line 873
    invoke-direct {p0}, Landroid/server/BluetoothService;->getProfileProxy()V
    :try_end_5b
    .catchall {:try_start_1c .. :try_end_5b} :catchall_5c

    goto :goto_18

    .line 851
    .end local v0           #discoverable:Ljava/lang/String;
    .end local v1           #timeout:Ljava/lang/String;
    :catchall_5c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isApplicationStateChangeTrackerEmpty()Z
    .registers 2

    .prologue
    .line 2582
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isBluetoothDock(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    .line 1557
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_service_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1560
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dock_bluetooth_address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    move-result v1

    monitor-exit p0

    return v1

    .line 1557
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isDiscovering()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1363
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v2, "Discovering"

    invoke-virtual {p0, v2, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, discoveringProperty:Ljava/lang/String;
    if-nez v0, :cond_13

    .line 1370
    :goto_12
    return v1

    :cond_13
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_12
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 461
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method declared-synchronized isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 916
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isRemoteDeviceInCache(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1204
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->isInCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTetheringOn()Z
    .registers 4

    .prologue
    .line 3061
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3063
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->isTetheringOn()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3064
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public leTestEnd()Z
    .registers 4

    .prologue
    .line 1340
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1342
    const/4 v0, 0x0

    .line 1343
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Landroid/server/BluetoothService;->leTestEndNative()Z

    move-result v0

    goto :goto_10
.end method

.method native leTestEndNative()Z
.end method

.method public declared-synchronized listBonds()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1531
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1531
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 1536
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method lookupInputDevicesMatchingStates([I)Ljava/util/List;
    .registers 4
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3270
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3271
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3272
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method declared-synchronized makeServiceChannelCallbacks(Ljava/lang/String;)V
    .registers 9
    .parameter "address"

    .prologue
    .line 2739
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2740
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 2741
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$RemoteService;

    .line 2742
    .local v3, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v4, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2743
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up failed UUID channel lookup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothCallback;
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_57

    .line 2746
    .local v0, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v0, :cond_53

    .line 2748
    const/4 v4, -0x1

    :try_start_50
    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_53} :catch_5a

    .line 2752
    :cond_53
    :goto_53
    :try_start_53
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_b

    .line 2739
    .end local v0           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_57
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2749
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v3       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_5a
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    :try_start_5b
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_57

    goto :goto_53

    .line 2755
    .end local v0           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_63
    monitor-exit p0

    return-void
.end method

.method notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z
    .registers 8
    .parameter "address"
    .parameter "rejected"

    .prologue
    const/4 v2, 0x1

    .line 3568
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3569
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_33

    .line 3570
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3571
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_2c

    .line 3572
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2b

    .line 3574
    const/16 v3, 0x67

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3575
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3576
    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v0, v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3585
    .end local v0           #msg:Landroid/os/Message;
    :cond_2b
    :goto_2b
    return v2

    .line 3580
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2c
    const/4 v3, 0x4

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3581
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_2b

    .line 3585
    .end local v0           #msg:Landroid/os/Message;
    :cond_33
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public notifyIncomingConnection(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "address"
    .parameter "rejected"

    .prologue
    .line 3547
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3548
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_34

    .line 3549
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3550
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_2d

    .line 3551
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2b

    .line 3553
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3554
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3555
    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3562
    :cond_2b
    :goto_2b
    const/4 v2, 0x1

    .line 3564
    .end local v0           #msg:Landroid/os/Message;
    :goto_2c
    return v2

    .line 3559
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2d
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3560
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_2b

    .line 3564
    .end local v0           #msg:Landroid/os/Message;
    :cond_34
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method notifyIncomingHidConnection(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 3400
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3401
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-nez v1, :cond_c

    .line 3402
    const/4 v2, 0x0

    .line 3407
    :goto_b
    return v2

    .line 3404
    :cond_c
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3405
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3406
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3407
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public notifyIncomingSapConnection(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    .line 3411
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3412
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyIncomingSapConnection()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    if-nez v1, :cond_25

    .line 3414
    const/4 v2, 0x0

    .line 3419
    :goto_24
    return v2

    .line 3416
    :cond_25
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3417
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3418
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3419
    const/4 v2, 0x1

    goto :goto_24
.end method

.method public notifySimCardRemovedAction()Z
    .registers 4

    .prologue
    .line 3207
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    const-string v0, "BluetoothService"

    const-string/jumbo v1, "notifySimCardRemovedAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    invoke-virtual {p0}, Landroid/server/BluetoothService;->notifySimCardRemovedActionNative()Z

    move-result v0

    return v0
.end method

.method native notifySimCardRemovedActionNative()Z
.end method

.method declared-synchronized onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .registers 5
    .parameter "address"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 920
    monitor-enter p0

    if-nez p2, :cond_18

    .line 921
    const/16 v0, 0xc

    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 922
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 923
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_2b

    .line 952
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 925
    :cond_18
    if-ne p2, v1, :cond_2e

    :try_start_1a
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2e

    .line 927
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 928
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_2b

    goto :goto_16

    .line 920
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 930
    :cond_2e
    const/4 v0, 0x7

    if-ne p2, v0, :cond_42

    :try_start_31
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_42

    .line 932
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 933
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_16

    .line 935
    :cond_42
    const/4 v0, 0x4

    if-ne p2, v0, :cond_51

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 937
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_16

    .line 941
    :cond_51
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getDeviceType()I

    move-result v0

    if-ne v0, v1, :cond_74

    if-gez p2, :cond_74

    .line 942
    const/16 v0, 0xa

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 948
    :goto_66
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 949
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    goto :goto_16

    .line 944
    :cond_74
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_79
    .catchall {:try_start_31 .. :try_end_79} :catchall_2b

    goto :goto_66
.end method

.method declared-synchronized onGattCharPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "char_path"
    .parameter "property_name"
    .parameter "status"

    .prologue
    .line 1793
    monitor-enter p0

    :try_start_1
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGattCharPropertyChanged char_path :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_38

    move-result v0

    .line 1795
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    if-ge v1, v0, :cond_31

    .line 1797
    :try_start_23
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetoothLEGattCallback;->onGattCharPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_3b

    .line 1795
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1803
    :cond_31
    :try_start_31
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_38

    .line 1804
    monitor-exit p0

    return-void

    .line 1793
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1798
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_3b
    move-exception v2

    goto :goto_2e
.end method

.method declared-synchronized onGattConnectDisconnect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "state"
    .parameter "device_path"

    .prologue
    .line 1750
    monitor-enter p0

    :try_start_1
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDeviceConnectDisconnect state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-virtual {p0, p2}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1754
    .local v1, address:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_9c

    move-result v0

    .line 1755
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2f
    if-ge v2, v0, :cond_95

    .line 1757
    :try_start_31
    const-string/jumbo v3, "true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1758
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callbacks fwd to GattProxy for Connected::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const-string v3, "GattConnected"

    const-string/jumbo v4, "true"

    invoke-virtual {p0, v1, v3, v4}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v3, v1}, Landroid/bluetooth/IBluetoothLEGattCallback;->onGattConnect(Ljava/lang/String;)V

    .line 1755
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1763
    :cond_68
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callbacks fwd to GattProxy for disConnected::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const-string v3, "GattConnected"

    const-string v4, "false"

    invoke-virtual {p0, v1, v3, v4}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v3, v1}, Landroid/bluetooth/IBluetoothLEGattCallback;->onGattDisconnect(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_31 .. :try_end_92} :catchall_9c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_92} :catch_93

    goto :goto_65

    .line 1767
    :catch_93
    move-exception v3

    goto :goto_65

    .line 1772
    :cond_95
    :try_start_95
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_9c

    .line 1773
    monitor-exit p0

    return-void

    .line 1750
    .end local v0           #N:I
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #i:I
    :catchall_9c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized onGattDiscoverCharResult(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .parameter "servicePath"
    .parameter "charPaths"

    .prologue
    .line 1821
    monitor-enter p0

    :try_start_1
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGattDiscoverCharResult servicePath :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_3b

    .line 1823
    if-nez p2, :cond_1e

    .line 1836
    :goto_1c
    monitor-exit p0

    return-void

    .line 1826
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_3b

    move-result v0

    .line 1827
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v0, :cond_35

    .line 1829
    :try_start_27
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothLEGattCallback;->onDiscoverCharResult(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_3b
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_3e

    .line 1827
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1835
    :cond_35
    :try_start_35
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    goto :goto_1c

    .line 1821
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_3b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1830
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_3e
    move-exception v2

    goto :goto_32
.end method

.method public onGattLinkLoss(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 1721
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "onGattLinkLoss"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1723
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 1725
    :try_start_11
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothLEGattCallback;->onGattLinkLoss(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_25

    .line 1723
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1731
    :cond_1f
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1732
    return-void

    .line 1726
    :catch_25
    move-exception v2

    goto :goto_1c
.end method

.method declared-synchronized onGattPrimaryServiceDiscovery(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .parameter "address"
    .parameter "uuid_path"

    .prologue
    .line 1776
    monitor-enter p0

    :try_start_1
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### UUID STRING ##"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    if-eqz p2, :cond_65

    const/4 v4, 0x0

    aget-object v4, p2, v4

    const-string v5, "UUIDs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1778
    array-length v2, p2

    .line 1779
    .local v2, len:I
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Len :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " address :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    add-int/lit8 v4, v2, -0x2

    new-array v3, v4, [Landroid/os/ParcelUuid;

    .line 1782
    .local v3, uuids:[Landroid/os/ParcelUuid;
    const/4 v1, 0x0

    .line 1783
    .local v1, j:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_53
    if-ge v0, v2, :cond_62

    .line 1784
    aget-object v4, p2, v0

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1785
    add-int/lit8 v1, v1, 0x1

    .line 1783
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 1788
    :cond_62
    invoke-virtual {p0, p1, v3}, Landroid/server/BluetoothService;->sendPrimaryUuidIntent(Ljava/lang/String;[Landroid/os/ParcelUuid;)V
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_67

    .line 1790
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v3           #uuids:[Landroid/os/ParcelUuid;
    :cond_65
    monitor-exit p0

    return-void

    .line 1776
    :catchall_67
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized onGattWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "charPath"
    .parameter "value"

    .prologue
    .line 1807
    monitor-enter p0

    :try_start_1
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGattWatcherValueChanged char_path :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_38

    move-result v0

    .line 1809
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    if-ge v1, v0, :cond_31

    .line 1811
    :try_start_23
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothLEGattCallback;->onWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_3b

    .line 1809
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1817
    :cond_31
    :try_start_31
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_38

    .line 1818
    monitor-exit p0

    return-void

    .line 1807
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1812
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_3b
    move-exception v2

    goto :goto_2e
.end method

.method public onGetRssiValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "rssival"
    .parameter "address"

    .prologue
    .line 1735
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "onGetRssiValue"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1737
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_26

    .line 1738
    const-string v2, "BluetoothService"

    const-string v3, "Ajith: In for loop for callbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :try_start_18
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothLEGattCallback;->onGetRssiValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_2c

    .line 1737
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1746
    :cond_26
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1747
    return-void

    .line 1741
    :catch_2c
    move-exception v2

    goto :goto_23
.end method

.method onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter "devicePath"
    .parameter "channelPath"
    .parameter "exists"

    .prologue
    .line 3359
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3360
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3362
    monitor-exit v1

    .line 3363
    return-void

    .line 3362
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method onHealthDeviceChannelConnectionError(II)V
    .registers 5
    .parameter "channelCode"
    .parameter "newState"

    .prologue
    .line 3367
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3368
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDeviceChannelConnectionError(II)V

    .line 3370
    monitor-exit v1

    .line 3371
    return-void

    .line 3370
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "devicePath"
    .parameter "channelPath"

    .prologue
    .line 3351
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3352
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    monitor-exit v1

    .line 3355
    return-void

    .line 3354
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method declared-synchronized prepareBluetooth()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 687
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Landroid/server/BluetoothService;->setupNativeDataNative()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_20

    move-result v2

    if-nez v2, :cond_a

    .line 698
    :goto_8
    monitor-exit p0

    return v1

    .line 691
    :cond_a
    :try_start_a
    invoke-direct {p0}, Landroid/server/BluetoothService;->updateSdpRecords()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_20

    .line 693
    const-wide/16 v1, 0x64

    :try_start_f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_20
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_18

    .line 697
    :goto_12
    const/4 v1, 0x0

    :try_start_13
    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 698
    const/4 v1, 0x1

    goto :goto_8

    .line 694
    :catch_18
    move-exception v0

    .line 695
    .local v0, e:Ljava/lang/InterruptedException;
    const-string/jumbo v1, "prepareBluetooth is interrupted"

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    goto :goto_12

    .line 687
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readOutOfBandData()[B
    .registers 4

    .prologue
    .line 1468
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1472
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->readAdapterOutOfBandDataNative()[B
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1468
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .registers 6
    .parameter "config"
    .parameter "callback"

    .prologue
    .line 3286
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3289
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3290
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public registerGattCallback(Landroid/bluetooth/IBluetoothLEGattCallback;)V
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1878
    const-string v0, "BluetoothService"

    const-string/jumbo v1, "registerGattCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    if-eqz p1, :cond_13

    .line 1880
    iget-object v1, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1881
    :try_start_d
    iget-object v0, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1882
    monitor-exit v1

    .line 1884
    :cond_13
    return-void

    .line 1882
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method

.method native registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method native registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method native releaseChannelFdNative(Ljava/lang/String;)Z
.end method

.method public declared-synchronized removeBond(Ljava/lang/String;)Z
    .registers 11
    .parameter "address"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1495
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_71

    move-result v1

    if-nez v1, :cond_15

    move v1, v7

    .line 1521
    :goto_13
    monitor-exit p0

    return v1

    .line 1499
    :cond_15
    :try_start_15
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    move v1, v7

    .line 1500
    goto :goto_13

    .line 1502
    :cond_1d
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 1503
    .local v6, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v6, :cond_2e

    .line 1504
    const/16 v1, 0x64

    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    move v1, v8

    .line 1505
    goto :goto_13

    .line 1509
    :cond_2e
    const/16 v1, 0xc

    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_6f

    .line 1510
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDeviceProfileState is null, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is bonded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    new-instance v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothDeviceProfileState;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;Z)V

    .line 1513
    .local v0, anotherState:Landroid/bluetooth/BluetoothDeviceProfileState;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->start()V

    .line 1515
    if-eqz v0, :cond_6f

    .line 1516
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V
    :try_end_6d
    .catchall {:try_start_15 .. :try_end_6d} :catchall_71

    move v1, v8

    .line 1517
    goto :goto_13

    .end local v0           #anotherState:Landroid/bluetooth/BluetoothDeviceProfileState;
    :cond_6f
    move v1, v7

    .line 1521
    goto :goto_13

    .line 1495
    .end local v6           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_71
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeBondInternal(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1526
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    .line 1527
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeDeviceNative(Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    .line 1526
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeProfileState(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 3499
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3500
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-nez v0, :cond_b

    .line 3504
    :goto_a
    return-void

    .line 3502
    :cond_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->quit()V

    .line 3503
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public removeServiceRecord(I)V
    .registers 6
    .parameter "handle"

    .prologue
    .line 2491
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_12

    .line 2498
    :goto_11
    return-void

    .line 2495
    :cond_12
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2496
    .local v0, message:Landroid/os/Message;
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2497
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method

.method runBluetooth()V
    .registers 7

    .prologue
    .line 886
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 888
    .local v2, ident:J
    :try_start_4
    iget-object v4, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_3d

    .line 892
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 895
    :goto_c
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 896
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/BluetoothPolicy;->isDiscoverableEnabled()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 897
    const-string v4, "BluetoothService"

    const-string/jumbo v5, "runBluetooth MDM: Limited Discoverable is Disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/16 v4, 0x17

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/server/BluetoothService;->setScanMode(II)Z

    .line 899
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/server/BluetoothService;->setDiscoverableTimeout(I)Z

    .line 902
    :cond_3c
    return-void

    .line 889
    .end local v1           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :catch_3d
    move-exception v0

    .line 890
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3e
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_49

    .line 892
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_49
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public declared-synchronized sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .registers 9
    .parameter "device"
    .parameter "profile"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 3674
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3a

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_b

    .line 3707
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 3676
    :cond_b
    :try_start_b
    invoke-direct {p0, p3}, Landroid/server/BluetoothService;->validateProfileConnectionState(I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0, p4}, Landroid/server/BluetoothService;->validateProfileConnectionState(I)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 3682
    :cond_17
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendConnectionStateChange: prevState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_3a

    goto :goto_9

    .line 3674
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3687
    :cond_3d
    :try_start_3d
    invoke-direct {p0, p2, p3, p4}, Landroid/server/BluetoothService;->updateProfileConnectionState(III)V

    .line 3689
    invoke-direct {p0, p3, p4}, Landroid/server/BluetoothService;->updateCountersAndCheckForConnectionStateChange(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3690
    iput p3, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 3692
    if-nez p3, :cond_51

    .line 3693
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 3696
    :cond_51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3697
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3698
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-direct {p0, p3}, Landroid/server/BluetoothService;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3700
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-direct {p0, p4}, Landroid/server/BluetoothService;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3702
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3703
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3704
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTION_STATE_CHANGE: device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_3d .. :try_end_9d} :catchall_3a

    goto/16 :goto_9
.end method

.method sendGattServiceUpdateIntent()V
    .registers 4

    .prologue
    .line 1662
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "sendGattServiceUpdateIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.GATT_SERVICE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1664
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1665
    return-void
.end method

.method sendPrimaryUuidIntent(Ljava/lang/String;[Landroid/os/ParcelUuid;)V
    .registers 6
    .parameter "address"
    .parameter "uuid"

    .prologue
    .line 1653
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "sendPrimaryUuidIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.GATT_PRIMARY_UUID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1655
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1656
    const-string v1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1657
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1658
    return-void
.end method

.method public sendProfileStateMessage(II)V
    .registers 5
    .parameter "profile"
    .parameter "cmd"

    .prologue
    .line 3598
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3599
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3600
    if-nez p1, :cond_f

    .line 3601
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3605
    :cond_e
    :goto_e
    return-void

    .line 3602
    :cond_f
    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 3603
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_e
.end method

.method declared-synchronized sendUuidIntent(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 2730
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 2731
    .local v1, uuid:[Landroid/os/ParcelUuid;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2732
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2733
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2734
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2735
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 2736
    monitor-exit p0

    return-void

    .line 2730
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uuid:[Landroid/os/ParcelUuid;
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setA2dpService(Landroid/server/BluetoothA2dpService;)V
    .registers 2
    .parameter "a2dpService"

    .prologue
    .line 3589
    iput-object p1, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    .line 3590
    return-void
.end method

.method native setAuthorizationNative(Ljava/lang/String;ZI)Z
.end method

.method public setBluetoothTethering(Z)V
    .registers 9
    .parameter "value"

    .prologue
    .line 3079
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    iget-object v3, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v3

    .line 3081
    :try_start_c
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 3082
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3083
    .local v0, allowInternetSharing:Z
    if-eqz p1, :cond_2f

    if-nez v0, :cond_2f

    .line 3084
    iget-object v2, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3090
    :cond_2d
    :goto_2d
    monitor-exit v3

    .line 3091
    return-void

    .line 3086
    :cond_2f
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothPanProfileHandler;->setBluetoothTethering(Z)V

    .line 3087
    if-nez v0, :cond_2d

    .line 3088
    iget-object v2, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2d

    .line 3090
    .end local v0           #allowInternetSharing:Z
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catchall_45
    move-exception v2

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_45

    throw v2
.end method

.method native setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method declared-synchronized setBondState(Ljava/lang/String;I)Z
    .registers 4
    .parameter "address"
    .parameter "state"

    .prologue
    .line 1548
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setBondState(Ljava/lang/String;II)Z
    .registers 6
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 1552
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 1553
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1552
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContentProtection(Z)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 1039
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z
    .registers 8
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    .line 1446
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_49

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 1459
    :goto_11
    monitor-exit p0

    return v1

    .line 1450
    :cond_13
    :try_start_13
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1454
    .local v0, value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting out of band data for: :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_13 .. :try_end_47} :catchall_49

    .line 1459
    const/4 v1, 0x1

    goto :goto_11

    .line 1446
    .end local v0           #value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    :catchall_49
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDiscoverableTimeout(I)Z
    .registers 6
    .parameter "timeout"

    .prologue
    .line 1053
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1057
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1058
    const-string v1, "BluetoothService"

    const-string v2, "Time Out MDM: Limited Discoverable is Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/4 p1, 0x0

    .line 1062
    :cond_26
    const-string v1, "DiscoverableTimeout"

    invoke-direct {p0, v1, p1}, Landroid/server/BluetoothService;->setPropertyInteger(Ljava/lang/String;I)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2e

    move-result v1

    monitor-exit p0

    return v1

    .line 1053
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 3235
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3238
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3239
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method setLinkTimeout(Ljava/lang/String;I)V
    .registers 8
    .parameter "address"
    .parameter "num_slots"

    .prologue
    .line 3051
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3052
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/server/BluetoothService;->setLinkTimeoutNative(Ljava/lang/String;I)Z

    move-result v1

    .line 3054
    .local v1, result:Z
    if-nez v1, :cond_28

    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Link Timeout to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slots failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_28
    return-void
.end method

.method public declared-synchronized setMapTrust(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 2014
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2015
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_27

    .line 2022
    :cond_11
    :goto_11
    monitor-exit p0

    return v0

    .line 2020
    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2022
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MapTrusted"

    if-eqz p2, :cond_22

    const/4 v0, 0x1

    :cond_22
    invoke-direct {p0, v1, v2, v0}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_27

    move-result v0

    goto :goto_11

    .line 2014
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setName(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    .line 1004
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    .line 1006
    if-nez p1, :cond_f

    .line 1007
    const/4 v0, 0x0

    .line 1009
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    const-string v0, "Name"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 1004
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNbParameters()Z
    .registers 2

    .prologue
    .line 3891
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/server/BluetoothService;->setNbParametersNative()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native setNbParametersNative()Z
.end method

.method declared-synchronized setPairable()V
    .registers 4

    .prologue
    .line 1166
    monitor-enter p0

    :try_start_1
    const-string v1, "Pairable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, pairableString:Ljava/lang/String;
    if-nez v0, :cond_14

    .line 1168
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "null pairableString"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_23

    .line 1174
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 1171
    :cond_14
    :try_start_14
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1172
    const-string v1, "Pairable"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_23

    goto :goto_12

    .line 1166
    .end local v0           #pairableString:Ljava/lang/String;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPairingConfirmation(Ljava/lang/String;Z)Z
    .registers 8
    .parameter "address"
    .parameter "confirm"

    .prologue
    const/4 v1, 0x0

    .line 2287
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_2e

    move-result v2

    if-nez v2, :cond_13

    .line 2300
    :goto_11
    monitor-exit p0

    return v1

    .line 2291
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2292
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2293
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_31

    .line 2295
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "setPasskey() called but no native data available, ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device or by bluez.\n"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2e

    goto :goto_11

    .line 2287
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2300
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_31
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPairingConfirmationNative(Ljava/lang/String;ZI)Z
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    move-result v1

    goto :goto_11
.end method

.method public declared-synchronized setPasskey(Ljava/lang/String;I)Z
    .registers 8
    .parameter "address"
    .parameter "passkey"

    .prologue
    const/4 v1, 0x0

    .line 2267
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_3b

    move-result v2

    if-nez v2, :cond_13

    .line 2283
    :cond_11
    :goto_11
    monitor-exit p0

    return v1

    .line 2271
    :cond_13
    if-ltz p2, :cond_11

    const v2, 0xf423f

    if-gt p2, v2, :cond_11

    :try_start_1a
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2274
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2275
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2276
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_3e

    .line 2278
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "setPasskey() called but no native data available, ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device or by bluez.\n"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_3b

    goto :goto_11

    .line 2267
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2283
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPasskeyNative(Ljava/lang/String;II)Z
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    move-result v1

    goto :goto_11
.end method

.method public declared-synchronized setPin(Ljava/lang/String;[B)Z
    .registers 10
    .parameter "address"
    .parameter "pin"

    .prologue
    const/4 v3, 0x0

    .line 2238
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_3e

    move-result v4

    if-nez v4, :cond_13

    .line 2263
    :cond_11
    :goto_11
    monitor-exit p0

    return v3

    .line 2242
    :cond_13
    if-eqz p2, :cond_11

    :try_start_15
    array-length v4, p2

    if-lez v4, :cond_11

    array-length v4, p2

    const/16 v5, 0x10

    if-gt v4, v5, :cond_11

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2246
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2247
    iget-object v4, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v4}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2248
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_41

    .line 2250
    const-string v4, "BluetoothService"

    const-string/jumbo v5, "setPin() called but no native data available, ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device or by bluez.\n"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_3e

    goto :goto_11

    .line 2238
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_3e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2258
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_41
    :try_start_41
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF8"

    invoke-direct {v1, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_3e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_48} :catch_51

    .line 2263
    .local v1, pinString:Ljava/lang/String;
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Landroid/server/BluetoothService;->setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_11

    .line 2259
    .end local v1           #pinString:Ljava/lang/String;
    :catch_51
    move-exception v2

    .line 2260
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v4, "BluetoothService"

    const-string v5, "UTF8 not supported?!?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_48 .. :try_end_59} :catchall_3e

    goto :goto_11
.end method

.method public declared-synchronized setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "address"
    .parameter "alias"

    .prologue
    .line 1290
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    move-result v0

    if-nez v0, :cond_13

    .line 1292
    const/4 v0, 0x0

    .line 1295
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alias"

    invoke-direct {p0, v0, v1, p2}, Landroid/server/BluetoothService;->setDevicePropertyStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    move-result v0

    goto :goto_11

    .line 1290
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "address"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothDeviceProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    return-void
.end method

.method public declared-synchronized setRemoteOutOfBandData(Ljava/lang/String;)Z
    .registers 10
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 2304
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    const-string v7, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_2e

    move-result v5

    if-nez v5, :cond_13

    .line 2327
    :goto_11
    monitor-exit p0

    return v4

    .line 2307
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2308
    iget-object v5, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v5}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2309
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_31

    .line 2311
    const-string v5, "BluetoothService"

    const-string/jumbo v6, "setRemoteOobData() called but no native data available, ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device or by bluez.\n"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2e

    goto :goto_11

    .line 2304
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_2e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2317
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_31
    :try_start_31
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2319
    .local v3, val:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    if-nez v3, :cond_4c

    .line 2321
    const/16 v4, 0x10

    new-array v1, v4, [B

    .line 2322
    .local v1, hash:[B
    const/16 v4, 0x10

    new-array v2, v4, [B

    .line 2327
    .local v2, randomizer:[B
    :goto_43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/server/BluetoothService;->setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z

    move-result v4

    goto :goto_11

    .line 2324
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    :cond_4c
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    .line 2325
    .restart local v1       #hash:[B
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B
    :try_end_54
    .catchall {:try_start_31 .. :try_end_54} :catchall_2e

    .restart local v2       #randomizer:[B
    goto :goto_43
.end method

.method public declared-synchronized setSapTrust(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 2032
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2033
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_27

    .line 2040
    :cond_11
    :goto_11
    monitor-exit p0

    return v0

    .line 2038
    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2040
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SapTrusted"

    if-eqz p2, :cond_22

    const/4 v0, 0x1

    :cond_22
    invoke-direct {p0, v1, v2, v0}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_27

    move-result v0

    goto :goto_11

    .line 2032
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanLE(Z)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 1969
    monitor-enter p0

    :try_start_1
    const-string v1, "ScanLe"

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_6
    invoke-direct {p0, v1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    move-result v0

    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanMode(II)Z
    .registers 14
    .parameter "mode"
    .parameter "duration"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1082
    monitor-enter p0

    :try_start_3
    iget-object v6, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v8, "Need WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v6, "BluetoothService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MDM: setScanMode called mode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v6, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1087
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const/16 v6, 0x17

    if-ne p1, v6, :cond_55

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/BluetoothPolicy;->isDiscoverableEnabled()Z

    move-result v6

    if-nez v6, :cond_55

    .line 1090
    const-string v5, "BluetoothService"

    const-string v6, "MDM: Discoverable mode is Disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string v5, "Discoverable"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_a2

    .line 1151
    :goto_53
    monitor-exit p0

    return v4

    .line 1094
    :cond_55
    const/16 v6, 0x15

    if-ne p1, v6, :cond_83

    .line 1096
    :try_start_59
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/BluetoothPolicy;->isDiscoverableEnabled()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v6

    if-nez v6, :cond_83

    .line 1098
    const-string v4, "BluetoothService"

    const-string/jumbo v6, "setScanMode: Always Discoverable is enabled, can\'t set to connectable mode."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v4, "Pairable"

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1100
    const-string v4, "Discoverable"

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    move v4, v5

    .line 1101
    goto :goto_53

    .line 1110
    :cond_83
    invoke-direct {p0}, Landroid/server/BluetoothService;->setAlarmService()V

    .line 1113
    packed-switch p1, :pswitch_data_110

    .line 1145
    :pswitch_89
    const-string v5, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested invalid scan mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_59 .. :try_end_a1} :catchall_a2

    goto :goto_53

    .line 1082
    .end local v1           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :catchall_a2
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1117
    .restart local v1       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :pswitch_a5
    :try_start_a5
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v6, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1119
    const/4 v3, 0x0

    .line 1120
    .local v3, pairable:Z
    const/4 v0, 0x0

    .line 1149
    .local v0, discoverable:Z
    :goto_ae
    const-string v4, "Discoverable"

    invoke-direct {p0, v4, v0}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1150
    const-string v4, "Pairable"

    invoke-direct {p0, v4, v3}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    move v4, v5

    .line 1151
    goto :goto_53

    .line 1125
    .end local v0           #discoverable:Z
    .end local v3           #pairable:Z
    :pswitch_ba
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v6, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1127
    const/4 v3, 0x1

    .line 1128
    .restart local v3       #pairable:Z
    const/4 v0, 0x0

    .line 1129
    .restart local v0       #discoverable:Z
    goto :goto_ae

    .line 1133
    .end local v0           #discoverable:Z
    .end local v3           #pairable:Z
    :pswitch_c4
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v6, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1134
    if-lez p2, :cond_ef

    .line 1135
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED_CUSTOM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    invoke-static {v4, v6, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    .line 1137
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-int/lit16 v9, p2, 0x3e8

    int-to-long v9, v9

    add-long/2addr v7, v9

    iget-object v9, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1140
    .end local v2           #intent:Landroid/content/Intent;
    :cond_ef
    const/4 v3, 0x1

    .line 1141
    .restart local v3       #pairable:Z
    const/4 v0, 0x1

    .line 1142
    .restart local v0       #discoverable:Z
    const-string v4, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BT Discoverable for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_a5 .. :try_end_10f} :catchall_a2

    goto :goto_ae

    .line 1113
    :pswitch_data_110
    .packed-switch 0x14
        :pswitch_a5
        :pswitch_ba
        :pswitch_89
        :pswitch_c4
    .end packed-switch
.end method

.method public declared-synchronized setScoPathChange(I)V
    .registers 3
    .parameter "scopath"

    .prologue
    .line 1067
    monitor-enter p0

    :try_start_1
    const-string v0, "ScoPathChange"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyInteger(Ljava/lang/String;I)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1068
    monitor-exit p0

    return-void

    .line 1067
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrust(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 1996
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1997
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_27

    .line 2004
    :cond_11
    :goto_11
    monitor-exit p0

    return v0

    .line 2002
    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2004
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trusted"

    if-eqz p2, :cond_22

    const/4 v0, 0x1

    :cond_22
    invoke-direct {p0, v1, v2, v0}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_27

    move-result v0

    goto :goto_11

    .line 1996
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWbsParameters()Z
    .registers 2

    .prologue
    .line 3887
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/server/BluetoothService;->setWbsParametersNative()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native setWbsParametersNative()Z
.end method

.method declared-synchronized shutoffBluetooth()V
    .registers 4

    .prologue
    .line 598
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeReservedServiceRecordsNative([I)Z

    .line 601
    :cond_a
    iget-boolean v0, p0, Landroid/server/BluetoothService;->btNAPAvailable:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    const-string/jumbo v1, "nap"

    const-string/jumbo v2, "pan1"

    invoke-virtual {p0, v0, v1, v2}, Landroid/server/BluetoothService;->setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 604
    :cond_18
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mMapAvailable:Z

    if-eqz v0, :cond_26

    iget v0, p0, Landroid/server/BluetoothService;->mMapRecordHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 605
    iget v0, p0, Landroid/server/BluetoothService;->mMapRecordHandle:I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z

    .line 607
    :cond_26
    invoke-direct {p0}, Landroid/server/BluetoothService;->tearDownNativeDataNative()Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 608
    monitor-exit p0

    return-void

    .line 598
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDiscovery()Z
    .registers 4

    .prologue
    .line 1347
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1351
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->startDiscoveryNative()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 1347
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startdisable(Z)Z
    .registers 7
    .parameter "saveSetting"

    .prologue
    const/4 v1, 0x1

    .line 507
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_20

    move-result v0

    .line 511
    .local v0, adapterState:I
    packed-switch v0, :pswitch_data_24

    .line 517
    :pswitch_12
    const/4 v1, 0x0

    .line 520
    :goto_13
    :pswitch_13
    monitor-exit p0

    return v1

    .line 519
    :pswitch_15
    :try_start_15
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 507
    .end local v0           #adapterState:I
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1

    .line 511
    nop

    :pswitch_data_24
    .packed-switch 0xa
        :pswitch_13
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method declared-synchronized switchConnectable(Z)V
    .registers 4
    .parameter "on"

    .prologue
    .line 1162
    monitor-enter p0

    :try_start_1
    const-string v1, "Powered"

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_6
    invoke-direct {p0, v1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    .line 1163
    monitor-exit p0

    return-void

    .line 1162
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .registers 5
    .parameter "config"

    .prologue
    .line 3294
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3297
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3298
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public unregisterGattCallback(Landroid/bluetooth/IBluetoothLEGattCallback;)V
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1887
    const-string v0, "BluetoothService"

    const-string/jumbo v1, "unregisterGattCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    if-eqz p1, :cond_13

    .line 1889
    iget-object v1, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1890
    :try_start_d
    iget-object v0, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1891
    monitor-exit v1

    .line 1893
    :cond_13
    return-void

    .line 1891
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method

.method native unregisterHealthApplicationNative(Ljava/lang/String;)Z
.end method

.method declared-synchronized updateBluetoothState(Ljava/lang/String;)V
    .registers 5
    .parameter "uuids"

    .prologue
    .line 837
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 839
    .local v0, adapterUuids:[Landroid/os/ParcelUuid;
    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 841
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 843
    :cond_18
    monitor-exit p0

    return-void

    .line 837
    .end local v0           #adapterUuids:[Landroid/os/ParcelUuid;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method updateDeviceServiceChannelCache(Ljava/lang/String;)V
    .registers 19
    .parameter "address"

    .prologue
    .line 2353
    const-string v14, "BluetoothService"

    const-string/jumbo v15, "updateDeviceServiceChannelCache(address)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 2359
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 2361
    .local v6, deviceUuids:[Landroid/os/ParcelUuid;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2363
    .local v2, applicationUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    .line 2364
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_45

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/server/BluetoothService$RemoteService;

    .line 2365
    .local v11, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_26

    .line 2366
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 2369
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_42
    move-exception v14

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1a .. :try_end_44} :catchall_42

    throw v14

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_42

    .line 2371
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2374
    .local v13, uuidToChannelMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    sget-object v3, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .local v3, arr$:[Landroid/os/ParcelUuid;
    array-length v10, v3

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_4f
    if-ge v8, v10, :cond_90

    aget-object v12, v3, v8

    .line 2375
    .local v12, uuid:Landroid/os/ParcelUuid;
    invoke-static {v6, v12}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v14

    if-eqz v14, :cond_8d

    .line 2376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Landroid/server/BluetoothService;->getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v5

    .line 2377
    .local v5, channel:I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_6b

    .line 2378
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    :cond_6b
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\tuuid(system): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    .end local v5           #channel:I
    :cond_8d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 2383
    .end local v12           #uuid:Landroid/os/ParcelUuid;
    :cond_90
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_94
    :goto_94
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_db

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .line 2384
    .restart local v12       #uuid:Landroid/os/ParcelUuid;
    invoke-static {v6, v12}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v14

    if-eqz v14, :cond_94

    .line 2385
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Landroid/server/BluetoothService;->getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v5

    .line 2386
    .restart local v5       #channel:I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_b8

    .line 2387
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    :cond_b8
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\tuuid(application): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 2393
    .end local v5           #channel:I
    .end local v12           #uuid:Landroid/os/ParcelUuid;
    :cond_db
    monitor-enter p0

    .line 2395
    :try_start_dc
    sget-object v12, Landroid/bluetooth/BluetoothUuid;->HDP_SRC:Landroid/os/ParcelUuid;

    .line 2396
    .restart local v12       #uuid:Landroid/os/ParcelUuid;
    invoke-static {v6, v12}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v14

    if-eqz v14, :cond_110

    .line 2397
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Inside tuuid(HDP_SRC): ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Landroid/server/BluetoothService;->getDeviceServiceHdpDataTypeForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)[I

    move-result-object v15

    iput-object v15, v14, Landroid/server/BluetoothHealthProfileHandler;->HealthSdpDataTypes:[I

    .line 2400
    :cond_110
    monitor-exit p0
    :try_end_111
    .catchall {:try_start_dc .. :try_end_111} :catchall_184

    .line 2402
    monitor-enter p0

    .line 2404
    :try_start_112
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2405
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_11e
    :goto_11e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_190

    .line 2406
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/server/BluetoothService$RemoteService;

    .line 2407
    .restart local v11       #service:Landroid/server/BluetoothService$RemoteService;
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11e

    .line 2408
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11e

    .line 2409
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2411
    .restart local v5       #channel:I
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Making callback for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with result "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothCallback;
    :try_end_178
    .catchall {:try_start_112 .. :try_end_178} :catchall_181

    .line 2414
    .local v4, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v4, :cond_17d

    .line 2416
    :try_start_17a
    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_17d
    .catchall {:try_start_17a .. :try_end_17d} :catchall_181
    .catch Landroid/os/RemoteException; {:try_start_17a .. :try_end_17d} :catch_187

    .line 2420
    :cond_17d
    :goto_17d
    :try_start_17d
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_11e

    .line 2427
    .end local v4           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v5           #channel:I
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v11           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_181
    move-exception v14

    monitor-exit p0
    :try_end_183
    .catchall {:try_start_17d .. :try_end_183} :catchall_181

    throw v14

    .line 2400
    .end local v12           #uuid:Landroid/os/ParcelUuid;
    :catchall_184
    move-exception v14

    :try_start_185
    monitor-exit p0
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_184

    throw v14

    .line 2417
    .restart local v4       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v5       #channel:I
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v11       #service:Landroid/server/BluetoothService$RemoteService;
    .restart local v12       #uuid:Landroid/os/ParcelUuid;
    :catch_187
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    :try_start_188
    const-string v14, "BluetoothService"

    const-string v15, ""

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17d

    .line 2426
    .end local v4           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v5           #channel:I
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v11           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_190
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2427
    monitor-exit p0
    :try_end_19a
    .catchall {:try_start_188 .. :try_end_19a} :catchall_181

    .line 2428
    return-void
.end method

.method updateRemoteDevicePropertiesCache(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 1212
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    .line 1213
    return-void
.end method

.method updateRemoteServicePropertiesCache(Ljava/lang/String;)V
    .registers 3
    .parameter "objPath"

    .prologue
    .line 1973
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->updateServiceCache(Ljava/lang/String;)Ljava/util/Map;

    .line 1974
    return-void
.end method

.method public writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V
    .registers 14
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3851
    .local p2, data:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v8

    .line 3852
    :try_start_3
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3854
    invoke-direct {p0}, Landroid/server/BluetoothService;->truncateIncomingConnectionFile()V

    .line 3855
    const/4 v3, 0x0

    .line 3856
    .local v3, out:Ljava/io/BufferedWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_bf

    .line 3858
    .local v6, value:Ljava/lang/StringBuilder;
    :try_start_11
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v9, "/data/misc/bluetooth/incoming_connection.conf"

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_b8
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1e} :catch_cc
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1e} :catch_95

    .line 3859
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1e
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3860
    .local v0, devAddress:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3861
    .local v5, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3862
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3863
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3864
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3865
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3866
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_60
    .catchall {:try_start_1e .. :try_end_60} :catchall_c6
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_60} :catch_61
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_60} :catch_c9

    goto :goto_28

    .line 3869
    .end local v0           #devAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_61
    move-exception v1

    move-object v3, v4

    .line 3870
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_63
    :try_start_63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_b8

    .line 3874
    if-eqz v3, :cond_82

    .line 3876
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_c2

    .line 3882
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_82
    :goto_82
    :try_start_82
    monitor-exit v8
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_bf

    .line 3883
    return-void

    .line 3868
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_84
    :try_start_84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_c6
    .catch Ljava/io/FileNotFoundException; {:try_start_84 .. :try_end_8b} :catch_61
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8b} :catch_c9

    .line 3874
    if-eqz v4, :cond_ce

    .line 3876
    :try_start_8d
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_92

    move-object v3, v4

    .line 3879
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_82

    .line 3877
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_92
    move-exception v7

    move-object v3, v4

    .line 3879
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_82

    .line 3871
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_95
    move-exception v1

    .line 3872
    .local v1, e:Ljava/io/IOException;
    :goto_96
    :try_start_96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_96 .. :try_end_b0} :catchall_b8

    .line 3874
    if-eqz v3, :cond_82

    .line 3876
    :try_start_b2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_82

    .line 3877
    :catch_b6
    move-exception v7

    goto :goto_82

    .line 3874
    .end local v1           #e:Ljava/io/IOException;
    :catchall_b8
    move-exception v7

    :goto_b9
    if-eqz v3, :cond_be

    .line 3876
    :try_start_bb
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c4

    .line 3879
    :cond_be
    :goto_be
    :try_start_be
    throw v7

    .line 3882
    .end local v3           #out:Ljava/io/BufferedWriter;
    .end local v6           #value:Ljava/lang/StringBuilder;
    :catchall_bf
    move-exception v7

    monitor-exit v8
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_bf

    throw v7

    .line 3877
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v6       #value:Ljava/lang/StringBuilder;
    :catch_c2
    move-exception v7

    goto :goto_82

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_c4
    move-exception v9

    goto :goto_be

    .line 3874
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_c6
    move-exception v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_b9

    .line 3871
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_c9
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_96

    .line 3869
    :catch_cc
    move-exception v1

    goto :goto_63

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_ce
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_82
.end method
