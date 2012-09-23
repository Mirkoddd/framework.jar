.class Landroid/server/BluetoothBondState;
.super Ljava/lang/Object;
.source "BluetoothBondState.java"


# static fields
.field private static final AUTO_PAIRING_BLACKLIST:Ljava/lang/String; = "/etc/bluetooth/auto_pairing.conf"

.field private static final DBG:Z = true

.field private static final DYNAMIC_AUTO_PAIRING_BLACKLIST:Ljava/lang/String; = "/data/misc/bluetooth/dynamic_auto_pairing.conf"

.field private static final TAG:Ljava/lang/String; = "BluetoothBondState"


# instance fields
.field private mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

.field private mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

.field private final mContext:Landroid/content/Context;

.field private mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

.field private mPairingRequestRcvd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingOutgoingBonding:Ljava/lang/String;

.field private final mPinAttempt:Ljava/util/HashMap;
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

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSapProxy:Landroid/bluetooth/BluetoothSap;

.field private final mService:Landroid/server/BluetoothService;

.field private final mState:Ljava/util/HashMap;
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


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .registers 6
    .parameter "context"
    .parameter "service"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    .line 352
    new-instance v1, Landroid/server/BluetoothBondState$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothBondState$1;-><init>(Landroid/server/BluetoothBondState;)V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 536
    new-instance v1, Landroid/server/BluetoothBondState$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothBondState$2;-><init>(Landroid/server/BluetoothBondState;)V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    .line 89
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothInputProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Landroid/server/BluetoothBondState;->readAutoPairingData()V

    .line 96
    return-void
.end method

.method static synthetic access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$202(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/server/BluetoothBondState;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    return-object v0
.end method

.method private closeProfileProxy()V
    .registers 4

    .prologue
    .line 337
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 339
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_e

    .line 340
    const/4 v1, 0x2

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 343
    :cond_e
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_18

    .line 344
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 347
    :cond_18
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-eqz v1, :cond_23

    .line 348
    const/16 v1, 0x8

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 350
    :cond_23
    return-void
.end method

.method private copyAutoPairingData()V
    .registers 12

    .prologue
    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, in:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 380
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_92
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_ae
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_6c

    move-result v8

    if-eqz v8, :cond_16

    .line 397
    if-eqz v3, :cond_12

    :try_start_11
    throw v3

    .line 398
    :cond_12
    if-eqz v6, :cond_15

    throw v6
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_b3

    .line 401
    .end local v2           #file:Ljava/io/File;
    :cond_15
    :goto_15
    return-void

    .line 383
    .restart local v2       #file:Ljava/io/File;
    :cond_16
    :try_start_16
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/etc/bluetooth/auto_pairing.conf"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_92
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1d} :catch_ae
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_6c

    .line 384
    .end local v3           #in:Ljava/io/FileInputStream;
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_1d
    new-instance v7, Ljava/io/FileOutputStream;

    const-string v8, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_a0
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_24} :catch_b0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_a7

    .line 386
    .end local v6           #out:Ljava/io/FileOutputStream;
    .local v7, out:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_26
    new-array v0, v8, [B

    .line 388
    .local v0, buf:[B
    :goto_28
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_5b

    .line 389
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_32} :catch_aa

    goto :goto_28

    .line 391
    .end local v0           #buf:[B
    .end local v5           #len:I
    :catch_33
    move-exception v1

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 392
    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :goto_36
    :try_start_36
    const-string v8, "BluetoothBondState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException: copyAutoPairingData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_92

    .line 397
    if-eqz v3, :cond_53

    :try_start_50
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 398
    :cond_53
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_58} :catch_59

    goto :goto_15

    .line 399
    :catch_59
    move-exception v8

    goto :goto_15

    .line 397
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v5       #len:I
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :cond_5b
    if-eqz v4, :cond_60

    :try_start_5d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 398
    :cond_60
    if-eqz v7, :cond_65

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_65} :catch_68

    :cond_65
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 399
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_15

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_68
    move-exception v8

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 400
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_15

    .line 393
    .end local v0           #buf:[B
    .end local v2           #file:Ljava/io/File;
    .end local v5           #len:I
    :catch_6c
    move-exception v1

    .line 394
    .local v1, e:Ljava/io/IOException;
    :goto_6d
    :try_start_6d
    const-string v8, "BluetoothBondState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: copyAutoPairingData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_6d .. :try_end_85} :catchall_92

    .line 397
    if-eqz v3, :cond_8a

    :try_start_87
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 398
    :cond_8a
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8f} :catch_90

    goto :goto_15

    .line 399
    :catch_90
    move-exception v8

    goto :goto_15

    .line 396
    .end local v1           #e:Ljava/io/IOException;
    :catchall_92
    move-exception v8

    .line 397
    :goto_93
    if-eqz v3, :cond_98

    :try_start_95
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 398
    :cond_98
    if-eqz v6, :cond_9d

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9d} :catch_9e

    .line 399
    :cond_9d
    :goto_9d
    throw v8

    :catch_9e
    move-exception v9

    goto :goto_9d

    .line 396
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catchall_a0
    move-exception v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_93

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catchall_a3
    move-exception v8

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_93

    .line 393
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_a7
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_6d

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_aa
    move-exception v1

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_6d

    .line 391
    .end local v2           #file:Ljava/io/File;
    :catch_ae
    move-exception v1

    goto :goto_36

    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_b0
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_36

    .line 399
    :catch_b3
    move-exception v8

    goto/16 :goto_15
.end method

.method private getProfileProxy()V
    .registers 5

    .prologue
    .line 311
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 313
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_10

    .line 314
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 318
    :cond_10
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_1c

    .line 319
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 323
    :cond_1c
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-nez v1, :cond_29

    .line 324
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 327
    :cond_29
    return-void
.end method

.method private loadBondState()V
    .registers 10

    .prologue
    .line 112
    iget-object v6, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_b

    .line 130
    :cond_a
    return-void

    .line 116
    :cond_b
    iget-object v6, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getAdapterProperties()Landroid/server/BluetoothAdapterProperties;

    move-result-object v6

    const-string v7, "Devices"

    invoke-virtual {v6, v7}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, val:Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 120
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, bonds:[Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 124
    iget-object v6, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 125
    const-string v6, "BluetoothBondState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bonded devices"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_48
    if-ge v3, v4, :cond_a

    aget-object v2, v0, v3

    .line 127
    .local v2, device:Ljava/lang/String;
    iget-object v6, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v2}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_48
.end method

.method private setProfilePriorities(Ljava/lang/String;I)V
    .registers 8
    .parameter "address"
    .parameter "state"

    .prologue
    const/16 v4, 0x64

    const/4 v3, -0x1

    .line 493
    const-string v1, "BluetoothBondState"

    const-string/jumbo v2, "setProfilePriorities****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 496
    .local v0, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, v0, p2}, Landroid/server/BluetoothInputProfileHandler;->setInitialInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 502
    const/16 v1, 0xc

    if-ne p2, v1, :cond_94

    .line 503
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v3, :cond_2b

    .line 505
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0, v4}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 508
    :cond_2b
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v3, :cond_3c

    .line 510
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0, v4}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 513
    :cond_3c
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v3, :cond_8c

    .line 515
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, v0, v4}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 531
    :cond_4d
    :goto_4d
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_59

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_59

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-nez v1, :cond_8b

    .line 532
    :cond_59
    const-string v1, "BluetoothBondState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_8b
    return-void

    .line 517
    :cond_8c
    const-string v1, "BluetoothBondState"

    const-string v2, "**********not able to set the priority for Sap **********************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 519
    :cond_94
    const/16 v1, 0xa

    if-ne p2, v1, :cond_4d

    .line 520
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_a1

    .line 521
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0, v3}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 523
    :cond_a1
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_aa

    .line 524
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0, v3}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 526
    :cond_aa
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-eqz v1, :cond_4d

    .line 527
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, v0, v3}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_4d
.end method

.method private updateAutoPairingData(Ljava/lang/String;)V
    .registers 9
    .parameter "address"

    .prologue
    .line 465
    const/4 v1, 0x0

    .line 467
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_e} :catch_39
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_5a

    .line 468
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v3, str:Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_20

    .line 470
    const-string v4, "DynamicAddressBlacklist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_84
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_2f} :catch_8a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2f} :catch_87

    .line 480
    if-eqz v2, :cond_8d

    .line 482
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_36

    move-object v1, v2

    .line 488
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #str:Ljava/lang/StringBuilder;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_35
    :goto_35
    return-void

    .line 483
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #str:Ljava/lang/StringBuilder;
    :catch_36
    move-exception v4

    move-object v1, v2

    .line 485
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_35

    .line 475
    .end local v3           #str:Ljava/lang/StringBuilder;
    :catch_39
    move-exception v0

    .line 476
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3a
    :try_start_3a
    const-string v4, "BluetoothBondState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException: updateAutoPairingData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_7b

    .line 480
    if-eqz v1, :cond_35

    .line 482
    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_35

    .line 483
    :catch_58
    move-exception v4

    goto :goto_35

    .line 477
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_5a
    move-exception v0

    .line 478
    .local v0, e:Ljava/io/IOException;
    :goto_5b
    :try_start_5b
    const-string v4, "BluetoothBondState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: updateAutoPairingData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_7b

    .line 480
    if-eqz v1, :cond_35

    .line 482
    :try_start_75
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_35

    .line 483
    :catch_79
    move-exception v4

    goto :goto_35

    .line 480
    .end local v0           #e:Ljava/io/IOException;
    :catchall_7b
    move-exception v4

    :goto_7c
    if-eqz v1, :cond_81

    .line 482
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 485
    :cond_81
    :goto_81
    throw v4

    .line 483
    :catch_82
    move-exception v5

    goto :goto_81

    .line 480
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_84
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_7c

    .line 477
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_87
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_5b

    .line 475
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_8a
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3a

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #str:Ljava/lang/StringBuilder;
    :cond_8d
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_35
.end method


# virtual methods
.method public declared-synchronized addAutoPairingFailure(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    .line 268
    :cond_c
    invoke-direct {p0, p1}, Landroid/server/BluetoothBondState;->updateAutoPairingData(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 270
    monitor-exit p0

    return-void

    .line 264
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attempt(Ljava/lang/String;)V
    .registers 7
    .parameter "address"

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 300
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_30

    .line 301
    const/4 v1, 0x1

    .line 305
    .local v1, newAttempt:I
    :goto_c
    const-string v2, "BluetoothBondState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attemp newAttempt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_37

    .line 308
    monitor-exit p0

    return-void

    .line 303
    .end local v1           #newAttempt:I
    :cond_30
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .restart local v1       #newAttempt:I
    goto :goto_c

    .line 298
    .end local v0           #attempt:Ljava/lang/Integer;
    .end local v1           #newAttempt:I
    :catchall_37
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clearPinAttempts(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 278
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothBondState"

    const-string v1, "clearPinAttempts: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 281
    monitor-exit p0

    return-void

    .line 278
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->closeProfileProxy()V

    .line 333
    return-void
.end method

.method public declared-synchronized getAttempt(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 290
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 291
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_e

    .line 292
    const/4 v1, 0x0

    .line 294
    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    move-result v1

    goto :goto_c

    .line 290
    .end local v0           #attempt:Ljava/lang/Integer;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 246
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_14

    .line 247
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_f

    .line 248
    const/16 v1, 0xa

    .line 250
    :goto_d
    monitor-exit p0

    return v1

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14

    move-result v1

    goto :goto_d

    .line 246
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAutoPairingFailed(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 286
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result v0

    goto :goto_6

    .line 284
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initBondState()V
    .registers 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->getProfileProxy()V

    .line 108
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->loadBondState()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 109
    monitor-exit p0

    return-void

    .line 107
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAutoPairingBlacklisted(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v4, 0x1

    .line 203
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_1e

    .line 204
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 229
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1d
    return v4

    .line 209
    :cond_1e
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_3b

    .line 210
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    .restart local v0       #blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_1d

    .line 215
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3b
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_7d

    .line 217
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_60

    .line 218
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, blacklistName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_1d

    .line 223
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_60
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_7d

    .line 224
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .restart local v1       #blacklistName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    goto :goto_1d

    .line 229
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_7d
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method public isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 237
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    .line 238
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    .line 242
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .registers 6
    .parameter "state"

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_16

    .line 254
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3

    .line 260
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_36

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized readAutoPairingData()V
    .registers 14

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    iget-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10b

    if-eqz v10, :cond_7

    .line 459
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 405
    :cond_7
    :try_start_7
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->copyAutoPairingData()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_10b

    .line 406
    const/4 v3, 0x0

    .line 407
    .local v3, fstream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 408
    .local v5, in:Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 410
    .local v1, file:Ljava/io/BufferedReader;
    :try_start_d
    new-instance v4, Ljava/io/FileInputStream;

    const-string v10, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_177
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_14} :catch_18d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_181

    .line 411
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v4, fstream:Ljava/io/FileInputStream;
    :try_start_14
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_179
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_190
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_184

    .line 412
    .end local v5           #in:Ljava/io/DataInputStream;
    .local v6, in:Ljava/io/DataInputStream;
    :try_start_19
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_17c
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_23} :catch_194
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_188

    .line 414
    .end local v1           #file:Ljava/io/BufferedReader;
    .local v2, file:Ljava/io/BufferedReader;
    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_147

    .line 415
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 416
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_23

    const-string v10, "//"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_23

    .line 417
    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 418
    .local v9, value:[Ljava/lang/String;
    if-eqz v9, :cond_23

    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_23

    .line 419
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, val:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const-string v11, "AddressBlacklist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_97

    .line 421
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    :try_end_66
    .catchall {:try_start_23 .. :try_end_66} :catchall_f7
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_66} :catch_67
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_66} :catch_af

    goto :goto_23

    .line 440
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #val:[Ljava/lang/String;
    .end local v9           #value:[Ljava/lang/String;
    :catch_67
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 441
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :goto_6b
    :try_start_6b
    const-string v10, "BluetoothBondState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileNotFoundException: readAutoPairingData "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_6b .. :try_end_83} :catchall_177

    .line 446
    if-eqz v3, :cond_88

    .line 447
    :try_start_85
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_165

    .line 451
    :cond_88
    :goto_88
    if-eqz v5, :cond_8d

    .line 452
    :try_start_8a
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_168

    .line 455
    :cond_8d
    :goto_8d
    if-eqz v1, :cond_5

    .line 456
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_94

    goto/16 :goto_5

    .line 457
    :catch_94
    move-exception v10

    goto/16 :goto_5

    .line 423
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #val:[Ljava/lang/String;
    .restart local v9       #value:[Ljava/lang/String;
    :cond_97
    const/4 v10, 0x0

    :try_start_98
    aget-object v10, v9, v10

    const-string v11, "ExactNameBlacklist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_df

    .line 424
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;
    :try_end_ad
    .catchall {:try_start_98 .. :try_end_ad} :catchall_f7
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_ad} :catch_67
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_ad} :catch_af

    goto/16 :goto_23

    .line 442
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #val:[Ljava/lang/String;
    .end local v9           #value:[Ljava/lang/String;
    :catch_af
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 443
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :goto_b3
    :try_start_b3
    const-string v10, "BluetoothBondState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException: readAutoPairingData "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_b3 .. :try_end_cb} :catchall_177

    .line 446
    if-eqz v3, :cond_d0

    .line 447
    :try_start_cd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_16b

    .line 451
    :cond_d0
    :goto_d0
    if-eqz v5, :cond_d5

    .line 452
    :try_start_d2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_16e

    .line 455
    :cond_d5
    :goto_d5
    if-eqz v1, :cond_5

    .line 456
    :try_start_d7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_dc

    goto/16 :goto_5

    .line 457
    :catch_dc
    move-exception v10

    goto/16 :goto_5

    .line 426
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #val:[Ljava/lang/String;
    .restart local v9       #value:[Ljava/lang/String;
    :cond_df
    const/4 v10, 0x0

    :try_start_e0
    aget-object v10, v9, v10

    const-string v11, "PartialNameBlacklist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10e

    .line 427
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;
    :try_end_f5
    .catchall {:try_start_e0 .. :try_end_f5} :catchall_f7
    .catch Ljava/io/FileNotFoundException; {:try_start_e0 .. :try_end_f5} :catch_67
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_f5} :catch_af

    goto/16 :goto_23

    .line 445
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #val:[Ljava/lang/String;
    .end local v9           #value:[Ljava/lang/String;
    :catchall_f7
    move-exception v10

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 446
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :goto_fb
    if-eqz v3, :cond_100

    .line 447
    :try_start_fd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_171

    .line 451
    :cond_100
    :goto_100
    if-eqz v5, :cond_105

    .line 452
    :try_start_102
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_173

    .line 455
    :cond_105
    :goto_105
    if-eqz v1, :cond_10a

    .line 456
    :try_start_107
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_175

    .line 457
    :cond_10a
    :goto_10a
    :try_start_10a
    throw v10
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_10b

    .line 404
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    :catchall_10b
    move-exception v10

    monitor-exit p0

    throw v10

    .line 429
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #val:[Ljava/lang/String;
    .restart local v9       #value:[Ljava/lang/String;
    :cond_10e
    const/4 v10, 0x0

    :try_start_10f
    aget-object v10, v9, v10

    const-string v11, "FixedPinZerosKeyboardBlacklist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_126

    .line 430
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;

    goto/16 :goto_23

    .line 432
    :cond_126
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const-string v11, "DynamicAddressBlacklist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13e

    .line 433
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    goto/16 :goto_23

    .line 436
    :cond_13e
    const-string v10, "BluetoothBondState"

    const-string v11, "Error parsing Auto pairing blacklist file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catchall {:try_start_10f .. :try_end_145} :catchall_f7
    .catch Ljava/io/FileNotFoundException; {:try_start_10f .. :try_end_145} :catch_67
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_145} :catch_af

    goto/16 :goto_23

    .line 446
    .end local v8           #val:[Ljava/lang/String;
    .end local v9           #value:[Ljava/lang/String;
    :cond_147
    if-eqz v4, :cond_14c

    .line 447
    :try_start_149
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_14c
    .catchall {:try_start_149 .. :try_end_14c} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14c} :catch_161

    .line 451
    :cond_14c
    :goto_14c
    if-eqz v6, :cond_151

    .line 452
    :try_start_14e
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_163

    .line 455
    :cond_151
    :goto_151
    if-eqz v2, :cond_156

    .line 456
    :try_start_153
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_156
    .catchall {:try_start_153 .. :try_end_156} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_15b

    :cond_156
    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 457
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_15b
    move-exception v10

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 458
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 448
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_161
    move-exception v10

    goto :goto_14c

    .line 453
    :catch_163
    move-exception v10

    goto :goto_151

    .line 448
    .end local v2           #file:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v6           #in:Ljava/io/DataInputStream;
    .end local v7           #line:Ljava/lang/String;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    :catch_165
    move-exception v10

    goto/16 :goto_88

    .line 453
    :catch_168
    move-exception v10

    goto/16 :goto_8d

    .line 448
    .local v0, e:Ljava/io/IOException;
    :catch_16b
    move-exception v10

    goto/16 :goto_d0

    .line 453
    :catch_16e
    move-exception v10

    goto/16 :goto_d5

    .line 448
    .end local v0           #e:Ljava/io/IOException;
    :catch_171
    move-exception v11

    goto :goto_100

    .line 453
    :catch_173
    move-exception v11

    goto :goto_105

    .line 457
    :catch_175
    move-exception v11

    goto :goto_10a

    .line 445
    :catchall_177
    move-exception v10

    goto :goto_fb

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catchall_179
    move-exception v10

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_fb

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catchall_17c
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_fb

    .line 442
    :catch_181
    move-exception v0

    goto/16 :goto_b3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catch_184
    move-exception v0

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_b3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_188
    move-exception v0

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_b3

    .line 440
    :catch_18d
    move-exception v0

    goto/16 :goto_6b

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catch_190
    move-exception v0

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_6b

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_194
    move-exception v0

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_6b
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;I)V
    .registers 4
    .parameter "address"
    .parameter "state"

    .prologue
    .line 133
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 134
    monitor-exit p0

    return-void

    .line 133
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;II)V
    .registers 13
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    .line 138
    monitor-enter p0

    :try_start_7
    const-string v3, "BluetoothBondState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBondState address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_42

    move-result v1

    .line 141
    .local v1, oldState:I
    if-ne v1, p2, :cond_33

    .line 200
    :goto_31
    monitor-exit p0

    return-void

    .line 146
    :cond_33
    if-ne v1, v8, :cond_45

    if-ne p2, v6, :cond_45

    const/4 v3, 0x3

    if-ne p3, v3, :cond_45

    .line 149
    :try_start_3a
    const-string v3, "BluetoothBondState"

    const-string v4, "If it was paired with the device do not unpair when we canceled the bonding process"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_42

    goto :goto_31

    .line 138
    .end local v1           #oldState:I
    :catchall_42
    move-exception v3

    monitor-exit p0

    throw v3

    .line 156
    .restart local v1       #oldState:I
    :cond_45
    if-ne v1, v7, :cond_52

    .line 157
    :try_start_47
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 158
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;

    .line 162
    :cond_52
    if-ne p2, v8, :cond_da

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, setTrust:Z
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const/4 v2, 0x1

    .line 166
    :cond_5e
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1, v2}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 167
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    .end local v2           #setTrust:Z
    :cond_68
    :goto_68
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothBondState;->setProfilePriorities(Ljava/lang/String;I)V

    .line 180
    const-string v3, "BluetoothBondState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "address bond state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v3, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    if-ne p2, v6, :cond_f6

    .line 188
    if-gtz p3, :cond_c7

    .line 189
    const-string v3, "BluetoothBondState"

    const-string/jumbo v4, "setBondState() called to unbond device, but reason code is invalid. Overriding reason code with BOND_RESULT_REMOVED"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/16 p3, 0x9

    .line 193
    :cond_c7
    const-string v3, "android.bluetooth.device.extra.REASON"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :goto_d1
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 169
    .end local v0           #intent:Landroid/content/Intent;
    :cond_da
    if-ne p2, v7, :cond_ed

    .line 170
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_e8

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_e8

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-nez v3, :cond_68

    .line 171
    :cond_e8
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->getProfileProxy()V

    goto/16 :goto_68

    .line 173
    :cond_ed
    if-ne p2, v6, :cond_68

    .line 174
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_68

    .line 196
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_f6
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catchall {:try_start_47 .. :try_end_ff} :catchall_42

    goto :goto_d1
.end method

.method declared-synchronized setPendingOutgoingBonding(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
