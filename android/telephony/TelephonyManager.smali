.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field public static final EXTRA_VOIP_CALLSTATE:Ljava/lang/String; = "is_voip_callstate"

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_IMS:I = 0x5

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field private static final PREFIX_TABLE:[Ljava/lang/String; = null

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final VOIPCALL_STATE_IDLE:I = 0x3

.field public static final VOIPCALL_STATE_OFFHOOK:I = 0x5

.field public static final VOIPCALL_STATE_RINGING:I = 0x4

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 99
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 156
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 1192
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SKT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KTF"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HSP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LGT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/TelephonyManager;->PREFIX_TABLE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v1, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_1c

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_1d

    .line 85
    sput-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    .line 90
    :goto_f
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 93
    .end local v0           #appContext:Landroid/content/Context;
    :cond_1c
    return-void

    .line 87
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_1d
    sput-object p1, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_f
.end method

.method public static deviceInfo()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1275
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 1053
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;
    .registers 2

    .prologue
    .line 1189
    const-string/jumbo v0, "phoneext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkClass(I)I
    .registers 2
    .parameter "networkType"

    .prologue
    .line 515
    packed-switch p0, :pswitch_data_c

    .line 535
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 521
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 531
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 533
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 515
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 552
    packed-switch p0, :pswitch_data_34

    .line 584
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 554
    :pswitch_6
    const-string v0, "GPRS"

    goto :goto_5

    .line 556
    :pswitch_9
    const-string v0, "EDGE"

    goto :goto_5

    .line 558
    :pswitch_c
    const-string v0, "UMTS"

    goto :goto_5

    .line 560
    :pswitch_f
    const-string v0, "HSDPA"

    goto :goto_5

    .line 562
    :pswitch_12
    const-string v0, "HSUPA"

    goto :goto_5

    .line 564
    :pswitch_15
    const-string v0, "HSPA"

    goto :goto_5

    .line 566
    :pswitch_18
    const-string v0, "CDMA"

    goto :goto_5

    .line 568
    :pswitch_1b
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_5

    .line 570
    :pswitch_1e
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_5

    .line 572
    :pswitch_21
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_5

    .line 574
    :pswitch_24
    const-string v0, "CDMA - 1xRTT"

    goto :goto_5

    .line 576
    :pswitch_27
    const-string v0, "LTE"

    goto :goto_5

    .line 578
    :pswitch_2a
    const-string v0, "CDMA - eHRPD"

    goto :goto_5

    .line 580
    :pswitch_2d
    const-string v0, "iDEN"

    goto :goto_5

    .line 582
    :pswitch_30
    const-string v0, "HSPA+"

    goto :goto_5

    .line 552
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_24
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_2d
        :pswitch_21
        :pswitch_27
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 371
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 372
    .local v0, mode:I
    if-ne v0, v2, :cond_c

    .line 373
    const/4 v1, 0x0

    .line 374
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_b
.end method

.method private getPhoneTypeFromProperty()I
    .registers 4

    .prologue
    .line 361
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 364
    .local v0, type:I
    return v0
.end method

.method private static getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "ua"
    .parameter "mdn"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1197
    const/4 v0, -0x1

    .line 1198
    .local v0, nNum:I
    const-string/jumbo v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oversea"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1207
    :goto_15
    return-object p0

    .line 1202
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_41

    .line 1203
    const-string v1, "I%c%c%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    .line 1205
    :cond_41
    const-string v1, "I%c%c%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_15
.end method

.method private static getServiceUserAgent()C
    .registers 3

    .prologue
    .line 1222
    const/16 v0, 0x30

    .line 1224
    .local v0, cNetworkType:C
    invoke-static {}, Landroid/telephony/TelephonyManager;->isWIFIConnected()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1225
    const/16 v0, 0x44

    .line 1258
    :goto_a
    return v0

    .line 1227
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 1229
    .local v1, nNetworkType:I
    packed-switch v1, :pswitch_data_2c

    .line 1255
    :pswitch_16
    const/16 v0, 0x36

    goto :goto_a

    .line 1232
    :pswitch_19
    const/16 v0, 0x42

    .line 1233
    goto :goto_a

    .line 1235
    :pswitch_1c
    const/16 v0, 0x43

    .line 1236
    goto :goto_a

    .line 1238
    :pswitch_1f
    const/16 v0, 0x38

    .line 1239
    goto :goto_a

    .line 1241
    :pswitch_22
    const/16 v0, 0x39

    .line 1242
    goto :goto_a

    .line 1249
    :pswitch_25
    const/16 v0, 0x36

    .line 1250
    goto :goto_a

    .line 1252
    :pswitch_28
    const/16 v0, 0x46

    .line 1253
    goto :goto_a

    .line 1229
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1c
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_1f
        :pswitch_22
        :pswitch_16
        :pswitch_16
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 933
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getUAField()Ljava/lang/String;
    .registers 23

    .prologue
    .line 1280
    const/16 v17, 0x0

    .line 1281
    .local v17, numPrefix:Ljava/lang/String;
    const-string v2, ""

    .line 1282
    .local v2, UserAgent:Ljava/lang/String;
    const-string v9, ""

    .line 1283
    .local v9, min8:Ljava/lang/String;
    const-string v8, ""

    .line 1284
    .local v8, mdn:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-static {}, Landroid/telephony/TelephonyManager;->deviceInfo()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v19, sbDeviceInfo:Ljava/lang/StringBuffer;
    const-string/jumbo v20, "ril.currentplmn"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "oversea"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1286
    .local v6, is_roaming:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getServiceUserAgent()C

    move-result v14

    .line 1288
    .local v14, networkType:C
    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1290
    const-string v20, "gsm.operator.numeric"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1291
    .local v13, networkOperator:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 1292
    .local v3, cell:Landroid/telephony/gsm/GsmCellLocation;
    if-nez v3, :cond_48

    .line 1293
    const-string v20, "TelephonyManager"

    const-string v21, "No Sim or Flight mode"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/16 v20, 0x0

    .line 1345
    :goto_47
    return-object v20

    .line 1298
    :cond_48
    :try_start_48
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    .line 1299
    .local v4, cid:I
    const v20, 0xff00

    and-int v20, v20, v4

    shr-int/lit8 v20, v20, 0x8

    move/from16 v0, v20

    int-to-byte v15, v0

    .line 1300
    .local v15, nodeB:B
    shr-int/lit8 v20, v4, 0x10

    and-int/lit8 v20, v20, 0x1f

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 1301
    .local v18, rnc:B
    shr-int/lit8 v20, v4, 0x15

    and-int/lit8 v20, v20, 0x7f

    move/from16 v0, v20

    int-to-byte v11, v0

    .line 1303
    .local v11, msd:B
    if-nez v6, :cond_15b

    .line 1304
    const-string v20, "gsm.sim.imsim"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1308
    :goto_6e
    const-string v20, "TelephonyManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mdn:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    sget-object v20, Landroid/telephony/TelephonyManager;->PREFIX_TABLE:[Ljava/lang/String;

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v21

    add-int/lit8 v21, v21, -0x30

    aget-object v17, v20, v21

    .line 1312
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_163

    .line 1313
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1323
    :goto_b5
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1324
    .local v10, mnc:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1325
    .local v7, mcc:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1326
    .local v12, networkInfo:Ljava/lang/String;
    const/16 v20, 0x46

    move/from16 v0, v20

    if-ne v14, v0, :cond_1c0

    .line 1327
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ";ECI;"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1332
    :goto_104
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1334
    if-eqz v17, :cond_139

    .line 1335
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1337
    :cond_139
    invoke-static {v2, v8}, Landroid/telephony/TelephonyManager;->getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1338
    const-string v20, "TelephonyManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getUAField():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v2

    .line 1345
    goto/16 :goto_47

    .line 1306
    .end local v7           #mcc:Ljava/lang/String;
    .end local v10           #mnc:Ljava/lang/String;
    .end local v12           #networkInfo:Ljava/lang/String;
    :cond_15b
    const-string v20, "gsm.sim.sktirm"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6e

    .line 1314
    :cond_163
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1ac

    .line 1315
    if-nez v6, :cond_198

    .line 1316
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_b5

    .line 1318
    :cond_198
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_b5

    .line 1320
    :cond_1ac
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_b5

    .line 1329
    .restart local v7       #mcc:Ljava/lang/String;
    .restart local v10       #mnc:Ljava/lang/String;
    .restart local v12       #networkInfo:Ljava/lang/String;
    :cond_1c0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v21, v15, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    rem-int/lit8 v21, v15, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1330
    .local v16, nodeBStr:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_223} :catch_226

    move-result-object v12

    goto/16 :goto_104

    .line 1339
    .end local v4           #cid:I
    .end local v7           #mcc:Ljava/lang/String;
    .end local v10           #mnc:Ljava/lang/String;
    .end local v11           #msd:B
    .end local v12           #networkInfo:Ljava/lang/String;
    .end local v15           #nodeB:B
    .end local v16           #nodeBStr:Ljava/lang/String;
    .end local v18           #rnc:B
    :catch_226
    move-exception v5

    .line 1340
    .local v5, e:Ljava/lang/Exception;
    const-string v20, "TelephonyManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "No Sim or No MSISDN -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1342
    const/16 v20, 0x0

    goto/16 :goto_47
.end method

.method private static isWIFIConnected()Z
    .registers 2

    .prologue
    .line 1211
    const-string v1, "gsm.wifiConnected.active"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, wifiConnected:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1214
    const/4 v1, 0x1

    .line 1216
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method


# virtual methods
.method public disableDataConnectivity()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1405
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    const-string v3, "default"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_13

    .line 1412
    :try_start_a
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_11} :catch_2f

    move-result v1

    .line 1416
    :goto_12
    return v1

    .line 1406
    :catch_13
    move-exception v0

    .line 1407
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1413
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_2d
    move-exception v0

    .line 1414
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_12

    .line 1415
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2f
    move-exception v0

    .line 1416
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_12
.end method

.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 277
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 281
    :goto_7
    return-void

    .line 279
    :catch_8
    move-exception v0

    goto :goto_7

    .line 278
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public enableDataConnectivity()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1375
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_c

    move-result v3

    if-nez v3, :cond_e

    .line 1396
    :goto_b
    return v2

    .line 1377
    :catch_c
    move-exception v0

    .line 1378
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_b

    .line 1381
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_e
    sget-object v3, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1382
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    if-nez v3, :cond_2c

    .line 1385
    :try_start_23
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const-string v4, "default"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2c} :catch_35

    .line 1392
    :cond_2c
    :try_start_2c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_33} :catch_39

    move-result v2

    goto :goto_b

    .line 1386
    :catch_35
    move-exception v0

    .line 1387
    .restart local v0       #ex:Ljava/lang/Exception;
    goto :goto_b

    .line 1393
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_37
    move-exception v0

    .line 1394
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_b

    .line 1395
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_39
    move-exception v0

    .line 1396
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_b
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 260
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 264
    :goto_7
    return-void

    .line 262
    :catch_8
    move-exception v0

    goto :goto_7

    .line 261
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public getCallState()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 961
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 967
    :goto_9
    return v1

    .line 962
    :catch_a
    move-exception v0

    .line 964
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 965
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 967
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriIconIndex()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 1104
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1109
    :goto_9
    return v1

    .line 1105
    :catch_a
    move-exception v0

    .line 1107
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 1108
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1109
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriIconMode()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 1122
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1127
    :goto_9
    return v1

    .line 1123
    :catch_a
    move-exception v0

    .line 1125
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 1126
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1127
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1138
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1143
    :goto_9
    return-object v1

    .line 1139
    :catch_a
    move-exception v0

    .line 1141
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 1142
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1143
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 237
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 238
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 239
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_18

    move-result v4

    if-eqz v4, :cond_14

    move-object v1, v3

    .line 245
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_14
    :goto_14
    return-object v1

    .line 242
    :catch_15
    move-exception v2

    .local v2, ex:Landroid/os/RemoteException;
    move-object v1, v3

    .line 243
    goto :goto_14

    .line 244
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_18
    move-exception v2

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 245
    goto :goto_14
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 837
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 842
    :goto_9
    return-object v1

    .line 838
    :catch_a
    move-exception v0

    .line 839
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 840
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 842
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCurrentPhoneType()I
    .registers 4

    .prologue
    .line 326
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 327
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 328
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 340
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 331
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_16

    move-result v2

    goto :goto_a

    .line 333
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v0

    .line 336
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 337
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 340
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a
.end method

.method public getDataActivity()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 997
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1003
    :goto_9
    return v1

    .line 998
    :catch_a
    move-exception v0

    .line 1000
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 1001
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1003
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataNetworkDisable()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1463
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkDisable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1467
    :goto_9
    return v1

    .line 1464
    :catch_a
    move-exception v0

    .line 1465
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 1466
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1467
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataRoamingEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1362
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataRoamingEnabled()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1366
    :goto_9
    return v1

    .line 1363
    :catch_a
    move-exception v0

    .line 1364
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 1365
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1366
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataState()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1033
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1038
    :goto_9
    return v1

    .line 1034
    :catch_a
    move-exception v0

    .line 1036
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 1037
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1038
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 219
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 223
    :goto_9
    return-object v1

    .line 220
    :catch_a
    move-exception v0

    .line 221
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 222
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 223
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 202
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 206
    :goto_9
    return-object v1

    .line 203
    :catch_a
    move-exception v0

    .line 204
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 205
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 206
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimDomain()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 905
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 910
    :goto_9
    return-object v1

    .line 906
    :catch_a
    move-exception v0

    .line 907
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 908
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 910
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimImpi()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 889
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 894
    :goto_9
    return-object v1

    .line 890
    :catch_a
    move-exception v0

    .line 891
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 892
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 894
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 922
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 927
    :goto_9
    return-object v1

    .line 923
    :catch_a
    move-exception v0

    .line 924
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 925
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 927
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 781
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 786
    :goto_9
    return-object v1

    .line 782
    :catch_a
    move-exception v0

    .line 783
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 784
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 786
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 761
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 766
    :goto_9
    return-object v1

    .line 762
    :catch_a
    move-exception v0

    .line 763
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 764
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 766
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLteOnCdmaMode()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 718
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 724
    :goto_9
    return v1

    .line 719
    :catch_a
    move-exception v0

    .line 721
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 722
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 724
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .registers 13

    .prologue
    const/16 v11, 0xc

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/16 v8, 0xd

    const/4 v4, 0x0

    .line 1514
    const/4 v2, 0x0

    .line 1515
    .local v2, mMobileInfo:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1517
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_d
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephonyExt;->getMobileQualityInformation()Ljava/lang/String;

    move-result-object v2

    .line 1518
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMobileQualityInformation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2d} :catch_14d

    .line 1524
    const-string v5, ";"

    const/16 v6, 0x11

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, Values:[Ljava/lang/String;
    aget-object v5, v0, v9

    const-string v6, "WCDMA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c4

    .line 1527
    const-string/jumbo v5, "network_mode"

    aget-object v6, v0, v9

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const-string/jumbo v5, "mcc"

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    const-string/jumbo v5, "mnc"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    const-string/jumbo v5, "uplink_channel"

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    const-string v5, "downlink_channel"

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    const-string v5, "cell_id"

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    const-string/jumbo v5, "rssi"

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    aget-object v5, v0, v10

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_168

    .line 1535
    const-string/jumbo v5, "tx_power"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    :goto_b3
    const-string/jumbo v5, "ul_interference"

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    const-string v5, "activeset_psc"

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    const-string v5, "activeset_rscp"

    const/16 v6, 0xa

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    const-string v5, "activeset_ecio"

    const/16 v6, 0xb

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    aget-object v5, v0, v11

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17a

    .line 1543
    const-string/jumbo v5, "neighborset_psc"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    :goto_108
    aget-object v5, v0, v8

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18c

    .line 1547
    const-string/jumbo v5, "neighborset_rscp"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    :goto_118
    const/16 v5, 0xe

    aget-object v5, v0, v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19e

    .line 1551
    const-string/jumbo v5, "neighborset_ecio"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    :goto_12a
    const-string v5, "cqi"

    const/16 v6, 0xf

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    const/16 v5, 0x10

    aget-object v5, v0, v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b2

    .line 1556
    const-string v5, "bler"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    .end local v0           #Values:[Ljava/lang/String;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_14c
    return-object v3

    .line 1519
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_14d
    move-exception v1

    .line 1520
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMobileQualityInformation() - Exception occured : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 1521
    goto :goto_14c

    .line 1537
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #Values:[Ljava/lang/String;
    :cond_168
    const-string/jumbo v5, "tx_power"

    aget-object v6, v0, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b3

    .line 1545
    :cond_17a
    const-string/jumbo v5, "neighborset_psc"

    aget-object v6, v0, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_108

    .line 1549
    :cond_18c
    const-string/jumbo v5, "neighborset_rscp"

    aget-object v6, v0, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_118

    .line 1553
    :cond_19e
    const-string/jumbo v5, "neighborset_ecio"

    const/16 v6, 0xe

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12a

    .line 1558
    :cond_1b2
    const-string v4, "bler"

    const/16 v5, 0x10

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14c

    .line 1562
    :cond_1c4
    const-string/jumbo v5, "network_mode"

    aget-object v6, v0, v9

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    const-string/jumbo v5, "mcc"

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const-string/jumbo v5, "mnc"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    const-string/jumbo v5, "tac"

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    const-string v5, "earfcn_downlink"

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    const-string v5, "earfcn_uplink"

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    const-string v5, "band"

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    const-string v5, "bandwidth"

    aget-object v6, v0, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    const-string v5, "cell_id"

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    const-string/jumbo v5, "pci"

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    const-string/jumbo v5, "rssi"

    const/16 v6, 0xa

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    const-string/jumbo v5, "rsrp"

    const/16 v6, 0xb

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const-string/jumbo v5, "rsrq"

    aget-object v6, v0, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    aget-object v5, v0, v8

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c5

    .line 1576
    const-string/jumbo v5, "tx_power"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    :goto_29d
    const-string/jumbo v4, "sinr"

    const/16 v5, 0xe

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    const-string/jumbo v4, "rrc"

    const/16 v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    const-string/jumbo v4, "ip"

    const/16 v5, 0x10

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14c

    .line 1578
    :cond_2c5
    const-string/jumbo v4, "tx_power"

    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29d
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 801
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 806
    :goto_9
    return-object v1

    .line 802
    :catch_a
    move-exception v0

    .line 803
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 804
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 806
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 293
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 297
    :goto_9
    return-object v1

    .line 294
    :catch_a
    move-exception v0

    .line 295
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 296
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 297
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 423
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 390
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 483
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 484
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 485
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_e

    move-result v2

    .line 495
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_b
    return v2

    .line 490
    :catch_c
    move-exception v0

    .line 492
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_b

    .line 493
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v0

    .line 495
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_b
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .registers 2

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_7
.end method

.method public getServiceState()I
    .registers 3

    .prologue
    .line 1435
    const/4 v0, 0x0

    .line 1437
    .local v0, state:I
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 1441
    :goto_9
    return v0

    .line 1439
    :catch_a
    move-exception v1

    goto :goto_9

    .line 1438
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 685
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 667
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 678
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 697
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 702
    :goto_9
    return-object v1

    .line 698
    :catch_a
    move-exception v0

    .line 699
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 700
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 702
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSimState()I
    .registers 3

    .prologue
    .line 637
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 639
    const/4 v1, 0x1

    .line 654
    :goto_f
    return v1

    .line 641
    :cond_10
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 642
    const/4 v1, 0x2

    goto :goto_f

    .line 644
    :cond_1a
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 645
    const/4 v1, 0x3

    goto :goto_f

    .line 647
    :cond_24
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 648
    const/4 v1, 0x4

    goto :goto_f

    .line 650
    :cond_2e
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 651
    const/4 v1, 0x5

    goto :goto_f

    .line 654
    :cond_38
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 743
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 748
    :goto_9
    return-object v1

    .line 744
    :catch_a
    move-exception v0

    .line 745
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 746
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 748
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getTimeInfo()Ljava/util/Date;
    .registers 18

    .prologue
    .line 1474
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v13

    if-eqz v13, :cond_8

    .line 1475
    const/4 v13, 0x0

    .line 1504
    :goto_7
    return-object v13

    .line 1478
    :cond_8
    :try_start_8
    invoke-direct/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephonyExt;->getTimeInfo()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_f} :catch_22

    move-result-object v9

    .line 1486
    .local v9, nitzString:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 1487
    const/4 v13, 0x0

    goto :goto_7

    .line 1479
    .end local v9           #nitzString:Ljava/lang/String;
    :catch_18
    move-exception v8

    .line 1480
    .local v8, ex:Landroid/os/RemoteException;
    const-string v13, "TelephonyManager"

    const-string v14, "getTimeInfo() - RemoteException"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    const/4 v13, 0x0

    goto :goto_7

    .line 1482
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v8

    .line 1483
    .local v8, ex:Ljava/lang/NullPointerException;
    const-string v13, "TelephonyManager"

    const-string v14, "getTimeInfo() - NullPointerException"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const/4 v13, 0x0

    goto :goto_7

    .line 1489
    .end local v8           #ex:Ljava/lang/NullPointerException;
    .restart local v9       #nitzString:Ljava/lang/String;
    :cond_2c
    const-string v13, "[/:,+-]"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1492
    .local v10, nitzSubs:[Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_33
    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit16 v1, v13, 0x7d0

    .line 1493
    .local v1, year:I
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1494
    .local v2, month:I
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1495
    .local v3, date:I
    const/4 v13, 0x3

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1496
    .local v4, hour:I
    const/4 v13, 0x4

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1497
    .local v5, minute:I
    const/4 v13, 0x5

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1499
    .local v6, second:I
    new-instance v0, Ljava/util/Date;

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 1500
    .local v0, dt:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/32 v15, 0x1ee6280

    add-long v11, v13, v15

    .line 1501
    .local v11, time:J
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v11, v12}, Ljava/util/Date;-><init>(J)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_71} :catch_72

    goto :goto_7

    .line 1502
    .end local v0           #dt:Ljava/util/Date;
    .end local v1           #year:I
    .end local v2           #month:I
    .end local v3           #date:I
    .end local v4           #hour:I
    .end local v5           #minute:I
    .end local v6           #second:I
    .end local v11           #time:J
    :catch_72
    move-exception v7

    .line 1503
    .local v7, e:Ljava/lang/Exception;
    const-string v13, "TelephonyManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Time is not valid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/4 v13, 0x0

    goto/16 :goto_7
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 873
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 878
    :goto_9
    return-object v1

    .line 874
    :catch_a
    move-exception v0

    .line 875
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 876
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 878
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 818
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 823
    :goto_9
    return-object v1

    .line 819
    :catch_a
    move-exception v0

    .line 820
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 821
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 823
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMessageCount()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 855
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 860
    :goto_9
    return v1

    .line 856
    :catch_a
    move-exception v0

    .line 857
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 858
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 860
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public hasIccCard()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 615
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 621
    :goto_9
    return v1

    .line 616
    :catch_a
    move-exception v0

    .line 618
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 619
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 621
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isNetworkRoaming()Z
    .registers 3

    .prologue
    .line 411
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRoamingArea()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1450
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRoamingArea()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1454
    :goto_9
    return v1

    .line 1451
    :catch_a
    move-exception v0

    .line 1452
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 1453
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1454
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isSmsCapable()Z
    .registers 3

    .prologue
    .line 1182
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1183
    :goto_5
    return v0

    :cond_6
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_5
.end method

.method public isVoiceCapable()Z
    .registers 3

    .prologue
    .line 1164
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1165
    :goto_5
    return v0

    :cond_6
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_5
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 8
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 1086
    sget-object v2, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_21

    sget-object v2, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_a
    :try_start_a
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1089
    .local v0, notifyNow:Ljava/lang/Boolean;
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_20} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_20} :catch_26

    .line 1095
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :goto_20
    return-void

    .line 1086
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_21
    const-string v1, "<unknown>"

    goto :goto_a

    .line 1088
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_24
    const/4 v2, 0x0

    goto :goto_11

    .line 1092
    :catch_26
    move-exception v2

    goto :goto_20

    .line 1090
    :catch_28
    move-exception v2

    goto :goto_20
.end method

.method public sendRequestToRIL([B[BI)I
    .registers 8
    .parameter "data"
    .parameter "response"
    .parameter "what"

    .prologue
    .line 1350
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 1353
    :goto_8
    return v1

    .line 1351
    :catch_9
    move-exception v0

    .line 1352
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v1, -0x1

    goto :goto_8
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 3
    .parameter "set"

    .prologue
    .line 1045
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1049
    :goto_7
    return-void

    .line 1047
    :catch_8
    move-exception v0

    goto :goto_7

    .line 1046
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public setDefaultSharedPreferencesForPhone(Ljava/lang/String;Z)V
    .registers 4
    .parameter "pref"
    .parameter "set"

    .prologue
    .line 1425
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDefaultSharedPreferencesForPhone(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1429
    :goto_7
    return-void

    .line 1427
    :catch_8
    move-exception v0

    goto :goto_7

    .line 1426
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public startMobileQualityInformation()V
    .registers 3

    .prologue
    .line 1588
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->startMobileQualityInformation()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_a

    .line 1593
    :goto_7
    return-void

    .line 1590
    :catch_8
    move-exception v0

    .line 1591
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_7

    .line 1592
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_a
    move-exception v0

    .line 1593
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public stopMobileQualityInformation()V
    .registers 3

    .prologue
    .line 1599
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->stopMobileQualityInformation()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_a

    .line 1604
    :goto_7
    return-void

    .line 1601
    :catch_8
    move-exception v0

    .line 1602
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_7

    .line 1603
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_a
    move-exception v0

    .line 1604
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_7
.end method
