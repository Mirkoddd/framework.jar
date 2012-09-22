.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$FocusEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;
    }
.end annotation


# static fields
.field public static final A2DPCONNECTED:Ljava/lang/String; = "audioParam;a2dpconnected"

.field public static final A2DPPLAYING:Ljava/lang/String; = "audioParam;a2dpplaying"

.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final AF:Ljava/lang/String; = "situation=4"

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field public static final BOOTSOUND:Ljava/lang/String; = "situation=8"

.field public static final CALL_CONNECTION:Ljava/lang/String; = "situation=14"

.field public static final CAMCORDING_START:Ljava/lang/String; = "situation=5"

.field public static final CAMCORDING_STOP:Ljava/lang/String; = "situation=5"

.field public static final DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x20000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final EAR_PROTECT_DEFAULT_INDEX:I = 0xa

.field public static EAR_PROTECT_LIMIT_INDEX_DISABLE:I = 0x0

.field public static EAR_PROTECT_LIMIT_INDEX_NORMAL:I = 0x0

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_GENERATION:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_GENERATION"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_INFO_CHANGED:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_INFO_CHANGED"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_NAME:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_NAME"

.field public static final EXTRA_REMOTE_CONTROL_EVENT_RECEIVER:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_EVENT_RECEIVER"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_FORCE_STREAM:I = 0x20

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_UDATE_STATE:I = 0x40

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final HEADSET_VOLUME:Ljava/lang/String; = ";device=2"

.field public static final IMPLICIT:Ljava/lang/String; = ";device=0"

.field public static final KEYBOARD:Ljava/lang/String; = "situation=2"

.field public static final KEY_TONE:Ljava/lang/String; = "situation=0"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_IN_VIDEOCALL:I = 0x4

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NUM_SOUND_EFFECTS:I = 0x13

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OUTDEVICE:Ljava/lang/String; = "audioParam;outDevice"

.field public static final RECORD_ACTIVE:Ljava/lang/String; = "isRecordActive"

.field public static final REMOTE_CONTROL_CLIENT_CHANGED:Ljava/lang/String; = "android.media.REMOTE_CONTROL_CLIENT_CHANGED"

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field private static final RINGER_MODE_MAX:I = 0x2

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SA_DUMP_OFF:I = 0x200

.field public static final SA_DUMP_ON:I = 0x400

.field public static final SA_GET_PUMP_DATA:I = 0x20

.field public static final SA_GET_VISUALIZATION_DATA:I = 0x8

.field public static final SA_SET_EXTENDED_PARAM:I = 0x80

.field public static final SA_SET_PRESET:I = 0x1

.field public static final SA_SET_PUMP:I = 0x10

.field public static final SA_SET_SPEED:I = 0x40

.field public static final SA_SET_USEREQ_DATA:I = 0x2

.field public static final SA_SET_VISUALIZATION:I = 0x4

.field public static final SA_ULP_DUMP_OFF:I = 0x100

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final SHUTTER_1:Ljava/lang/String; = "situation=3"

.field public static final SHUTTER_2:Ljava/lang/String; = "situation=9"

.field public static final SHUTTER_3:Ljava/lang/String; = "situation=10"

.field public static final SITUATION_MIDI:Ljava/lang/String; = "situation=6"

.field public static final SOUNDALIVE_PRESET_BASS_BOOST:I = 0x7

.field public static final SOUNDALIVE_PRESET_CAFE:I = 0xb

.field public static final SOUNDALIVE_PRESET_CLASSIC:I = 0x5

.field public static final SOUNDALIVE_PRESET_CONCERT_HALL:I = 0xc

.field public static final SOUNDALIVE_PRESET_DANCE:I = 0x3

.field public static final SOUNDALIVE_PRESET_EXTERNALIZATION:I = 0xa

.field public static final SOUNDALIVE_PRESET_JAZZ:I = 0x4

.field public static final SOUNDALIVE_PRESET_MOVIE:I = 0xf

.field public static final SOUNDALIVE_PRESET_MTHEATER:I = 0x9

.field public static final SOUNDALIVE_PRESET_NORMAL:I = 0x0

.field public static final SOUNDALIVE_PRESET_POP:I = 0x1

.field public static final SOUNDALIVE_PRESET_ROCK:I = 0x2

.field public static final SOUNDALIVE_PRESET_TREBLE_BOOST:I = 0x8

.field public static final SOUNDALIVE_PRESET_USER:I = 0xd

.field public static final SOUNDALIVE_PRESET_VIRT51:I = 0x10

.field public static final SOUNDALIVE_PRESET_VOCAL:I = 0x6

.field public static final SOUNDALIVE_PRESET_VOICE:I = 0xe

.field public static final SOUND_BATTERY_CAUTION:I = 0xd

.field public static final SOUND_CALL_DISCONNECT:I = 0x10

.field public static final SOUND_CHARGER_CONNECTION:I = 0xe

.field public static final SOUND_GLASS_UNLOCK:I = 0xa

.field public static final SOUND_HW_TOUCH:I = 0x12

.field public static final SOUND_INSERT:I = 0xf

.field public static final SOUND_LOW_BATTERY:I = 0xc

.field public static final SOUND_MIN_INDEX:I = 0x9

.field public static final SOUND_OPERATION_MAX_INDEX:I = 0x11

.field public static final SOUND_OPERATION_MIN_INDEX:I = 0xa

.field public static final SOUND_PUZZLE_UNLOCK:I = 0xb

.field public static final SOUND_SILENT_MODE_OFF:I = 0x11

.field public static final SOUND_TOUCH:I = 0x9

.field public static final SPEAKER_VOLUME:Ljava/lang/String; = ";device=1"

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_FM_RADIO:I = 0xa

.field public static final STREAM_HPH_FM_RADIO:I = 0xd

.field public static final STREAM_HPH_MUSIC:I = 0xc

.field public static final STREAM_HPH_TTS:I = 0xe

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VIDEO_CALL:I = 0xb

.field public static final STREAM_VOICE_CALL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final TONE_HIPRI:Ljava/lang/String; = "situation=16"

.field public static final TONE_LOPRI:Ljava/lang/String; = "situation=15"

.field public static final TOUCH_TONE:Ljava/lang/String; = "situation=1"

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field private static final VIBRATE_SETTING_MAX:I = 0x2

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field private static final VIBRATE_TYPE_MAX:I = 0x1

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VIDEO:Ljava/lang/String; = "situation=7"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static localLOGV:Z

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

.field private mAudioFocusIdListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFocusListenerLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mICallBack:Landroid/os/IBinder;

.field private mVolumeControlStream:I

.field private mVolumeKeyUpTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "AudioManager"

    sput-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioManager;->localLOGV:Z

    .line 215
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    .line 1438
    const/16 v0, 0x10

    sput v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_DISABLE:I

    .line 1439
    const/16 v0, 0xd

    sput v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL:I

    return-void

    .line 215
    nop

    :array_1a
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 427
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 1924
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    .line 1930
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    .line 1939
    new-instance v0, Landroid/media/AudioManager$FocusEventHandlerDelegate;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    .line 1978
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2335
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 428
    iput-object p1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    .line 429
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mHandler:Landroid/os/Handler;

    .line 430
    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    return-object v0
.end method

.method private findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 3
    .parameter "id"

    .prologue
    .line 1933
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public static getActiveStreamType()I
    .registers 5

    .prologue
    .line 1024
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1025
    .local v2, service:Landroid/media/IAudioService;
    const/high16 v1, -0x8000

    .line 1027
    .local v1, nReturn:I
    const/high16 v3, -0x8000

    :try_start_8
    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getActiveStreamType(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v1

    .line 1031
    :goto_c
    return v1

    .line 1028
    :catch_d
    move-exception v0

    .line 1029
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getActiveStreamType"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public static getEarProtectLimitIndex()I
    .registers 5

    .prologue
    .line 2463
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2464
    .local v2, service:Landroid/media/IAudioService;
    sget v1, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL:I

    .line 2466
    .local v1, nReturn:I
    :try_start_6
    invoke-interface {v2}, Landroid/media/IAudioService;->isEarProtectLimitOn()Z

    move-result v3

    if-eqz v3, :cond_f

    sget v1, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL:I

    .line 2470
    :goto_e
    return v1

    .line 2466
    :cond_f
    sget v1, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_DISABLE:I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_e

    .line 2467
    :catch_12
    move-exception v0

    .line 2468
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isEarProtectLimitOn"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .registers 5
    .parameter "l"

    .prologue
    .line 1988
    if-nez p1, :cond_c

    .line 1989
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1991
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static getService()Landroid/media/IAudioService;
    .registers 2

    .prologue
    .line 434
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_7

    .line 435
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 439
    .local v0, b:Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 437
    .end local v0           #b:Landroid/os/IBinder;
    :cond_7
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 438
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 439
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    goto :goto_6
.end method

.method public static isEarProtectLimitOn()Z
    .registers 5

    .prologue
    .line 2480
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2481
    .local v2, service:Landroid/media/IAudioService;
    const/4 v0, 0x0

    .line 2483
    .local v0, bReturn:Z
    :try_start_5
    invoke-interface {v2}, Landroid/media/IAudioService;->isEarProtectLimitOn()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v0

    .line 2487
    :goto_9
    return v0

    .line 2484
    :catch_a
    move-exception v1

    .line 2485
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isEarProtectLimitOn"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static isMediaSilentMode()Z
    .registers 5

    .prologue
    .line 1044
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1045
    .local v2, service:Landroid/media/IAudioService;
    const/4 v1, 0x0

    .line 1047
    .local v1, nReturn:Z
    :try_start_5
    invoke-interface {v2}, Landroid/media/IAudioService;->isMediaSilentMode()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v1

    .line 1051
    :goto_9
    return v1

    .line 1048
    :catch_a
    move-exception v0

    .line 1049
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isMediaSilentMode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static isValidRingerMode(I)Z
    .registers 2
    .parameter "ringerMode"

    .prologue
    .line 662
    if-ltz p0, :cond_5

    const/4 v0, 0x2

    if-le p0, v0, :cond_7

    .line 663
    :cond_5
    const/4 v0, 0x0

    .line 665
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static ismVoiceCapable()Z
    .registers 5

    .prologue
    .line 1055
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1056
    .local v2, service:Landroid/media/IAudioService;
    const/4 v1, 0x0

    .line 1058
    .local v1, nReturn:Z
    :try_start_5
    invoke-interface {v2}, Landroid/media/IAudioService;->ismVoiceCapable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v1

    .line 1062
    :goto_9
    return v1

    .line 1059
    :catch_a
    move-exception v0

    .line 1060
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in ismVoiceCapable"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method private querySoundEffectsEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1826
    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static setMediaSilentMode(Z)V
    .registers 5
    .parameter "on"

    .prologue
    .line 1035
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1037
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p0}, Landroid/media/IAudioService;->setMediaSilentMode(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1041
    :goto_7
    return-void

    .line 1038
    :catch_8
    move-exception v0

    .line 1039
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .registers 8
    .parameter "l"

    .prologue
    .line 2076
    const/4 v2, 0x0

    .line 2077
    .local v2, status:I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 2078
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2080
    .local v1, service:Landroid/media/IAudioService;
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    move-result v2

    .line 2085
    :goto_12
    return v2

    .line 2082
    :catch_13
    move-exception v0

    .line 2083
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call abandonAudioFocus() from AudioService due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public adjustStreamVolume(III)V
    .registers 8
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 576
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 578
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 582
    :goto_7
    return-void

    .line 579
    :catch_8
    move-exception v0

    .line 580
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 8
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 628
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 630
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 634
    :goto_7
    return-void

    .line 631
    :catch_8
    move-exception v0

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public adjustVolume(II)V
    .registers 7
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 602
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 604
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->adjustVolume(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 608
    :goto_7
    return-void

    .line 605
    :catch_8
    move-exception v0

    .line 606
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public dismissVolumePanel()V
    .registers 1

    .prologue
    .line 2500
    return-void
.end method

.method public forceVolumeControlStream(I)V
    .registers 2
    .parameter "streamType"

    .prologue
    .line 870
    iput p1, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 871
    return-void
.end method

.method public getDevicesForStream(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 2441
    packed-switch p1, :pswitch_data_a

    .line 2451
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2449
    :pswitch_5
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    goto :goto_4

    .line 2441
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 6
    .parameter "streamType"

    .prologue
    .line 721
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 723
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 726
    :goto_8
    return v2

    .line 724
    :catch_9
    move-exception v0

    .line 725
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getMode()I
    .registers 5

    .prologue
    .line 1423
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1425
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1428
    :goto_8
    return v2

    .line 1426
    :catch_9
    move-exception v0

    .line 1427
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1428
    const/4 v2, -0x2

    goto :goto_8
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "keys"

    .prologue
    .line 1632
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingerMode()I
    .registers 5

    .prologue
    .line 644
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 646
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 649
    :goto_8
    return v2

    .line 647
    :catch_9
    move-exception v0

    .line 648
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    const/4 v2, 0x2

    goto :goto_8
.end method

.method public getRouting(I)I
    .registers 3
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1549
    const/4 v0, -0x1

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 6
    .parameter "streamType"

    .prologue
    .line 676
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 678
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 681
    :goto_8
    return v2

    .line 679
    :catch_9
    move-exception v0

    .line 680
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getStreamVolume(I)I
    .registers 6
    .parameter "streamType"

    .prologue
    .line 694
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 696
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 699
    :goto_8
    return v2

    .line 697
    :catch_9
    move-exception v0

    .line 698
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getStreamVolumeForce(I)I
    .registers 6
    .parameter "streamType"

    .prologue
    .line 705
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 707
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolumeForce(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 710
    :goto_8
    return v2

    .line 708
    :catch_9
    move-exception v0

    .line 709
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamVolumeForce"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getVibrateSetting(I)I
    .registers 6
    .parameter "vibrateType"

    .prologue
    .line 916
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 918
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 921
    :goto_8
    return v2

    .line 919
    :catch_9
    move-exception v0

    .line 920
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public handleKeyDown(II)V
    .registers 12
    .parameter "keyCode"
    .parameter "stream"

    .prologue
    const/4 v8, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 467
    sparse-switch p1, :sswitch_data_72

    .line 528
    :goto_7
    return-void

    .line 474
    :sswitch_8
    const/16 v0, 0x11

    .line 475
    .local v0, flags:I
    iget v6, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    if-eq v6, v5, :cond_12

    .line 476
    iget p2, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 477
    or-int/lit8 v0, v0, 0x20

    .line 479
    :cond_12
    const/16 v6, 0x18

    if-ne p1, v6, :cond_1a

    :goto_16
    invoke-virtual {p0, v4, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_7

    :cond_1a
    move v4, v5

    goto :goto_16

    .line 488
    .end local v0           #flags:I
    :sswitch_1c
    const/4 v1, 0x1

    .line 489
    .local v1, flags2:I
    invoke-static {}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v3

    .line 490
    .local v3, streamType:I
    invoke-static {}, Landroid/media/AudioManager;->ismVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_2a

    const/4 v7, 0x3

    if-eq v3, v7, :cond_65

    .line 491
    :cond_2a
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 492
    .local v2, ringerMode:I
    if-eq v2, v8, :cond_3f

    .line 493
    invoke-virtual {p0, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 515
    :goto_33
    iget v4, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    if-eq v4, v5, :cond_3b

    .line 516
    iget p2, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 517
    or-int/lit8 v1, v1, 0x20

    .line 520
    :cond_3b
    invoke-virtual {p0, v6, p2, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_7

    .line 495
    :cond_3f
    invoke-virtual {p0, v6}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v7

    packed-switch v7, :pswitch_data_80

    .line 511
    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_33

    .line 497
    :pswitch_4a
    invoke-virtual {p0, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_33

    .line 500
    :pswitch_4e
    iget-object v7, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "vibrate_in_silent"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_61

    .line 502
    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_33

    .line 504
    :cond_61
    invoke-virtual {p0, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_33

    .line 523
    .end local v2           #ringerMode:I
    :cond_65
    invoke-static {}, Landroid/media/AudioManager;->isMediaSilentMode()Z

    move-result v5

    if-nez v5, :cond_6f

    :goto_6b
    invoke-static {v4}, Landroid/media/AudioManager;->setMediaSilentMode(Z)V

    goto :goto_7

    :cond_6f
    move v4, v6

    goto :goto_6b

    .line 467
    nop

    :sswitch_data_72
    .sparse-switch
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0xa4 -> :sswitch_1c
    .end sparse-switch

    .line 495
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4e
    .end packed-switch
.end method

.method public handleKeyUp(II)V
    .registers 6
    .parameter "keyCode"
    .parameter "stream"

    .prologue
    .line 534
    packed-switch p1, :pswitch_data_1a

    .line 557
    :goto_3
    return-void

    .line 541
    :pswitch_4
    const/4 v0, 0x4

    .line 542
    .local v0, flags:I
    iget v1, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 543
    iget p2, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 544
    or-int/lit8 v0, v0, 0x20

    .line 546
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 551
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    goto :goto_3

    .line 534
    nop

    :pswitch_data_1a
    .packed-switch 0x18
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .prologue
    .line 1269
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 1271
    const/4 v0, 0x0

    .line 1273
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .registers 3

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .registers 5

    .prologue
    .line 1245
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1247
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothScoOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1250
    :goto_8
    return v2

    .line 1248
    :catch_9
    move-exception v0

    .line 1249
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1250
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isExtraSpeakerDockOn()Z
    .registers 3

    .prologue
    .line 1358
    const/16 v0, 0x800

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x1000

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 1362
    const/4 v0, 0x0

    .line 1364
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public isFMActive()Z
    .registers 3

    .prologue
    .line 1567
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isMicrophoneMute()Z
    .registers 2

    .prologue
    .line 1388
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .registers 3

    .prologue
    .line 1558
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isRadioSpeakerOn()Z
    .registers 5

    .prologue
    .line 1014
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1016
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isRadioSpeakerOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1019
    :goto_8
    return v2

    .line 1017
    :catch_9
    move-exception v0

    .line 1018
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isRadioSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isRecordActive()Z
    .registers 3

    .prologue
    .line 1577
    const-string/jumbo v1, "isRecordActive"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1578
    .local v0, isRecordActive:Ljava/lang/String;
    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1579
    const/4 v1, 0x1

    .line 1581
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public isSilentMode()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2347
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 2348
    .local v0, ringerMode:I
    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_a

    .line 2351
    .local v1, silentMode:Z
    :cond_9
    :goto_9
    return v1

    .line 2348
    .end local v1           #silentMode:Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public isSpeakerphoneOn()Z
    .registers 5

    .prologue
    .line 977
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 979
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 982
    :goto_8
    return v2

    .line 980
    :catch_9
    move-exception v0

    .line 981
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isStreamMute(I)Z
    .registers 6
    .parameter "streamType"

    .prologue
    .line 853
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 855
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 858
    :goto_8
    return v2

    .line 856
    :catch_9
    move-exception v0

    .line 857
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isVoiceCallActive()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1590
    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isWiredHeadphoneOn()Z
    .registers 3

    .prologue
    .line 1342
    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 1344
    const/4 v0, 0x0

    .line 1346
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public isWiredHeadsetOn()Z
    .registers 3

    .prologue
    .line 1325
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1329
    const/4 v0, 0x0

    .line 1331
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public loadSoundEffects()V
    .registers 6

    .prologue
    .line 1835
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1837
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1841
    :goto_7
    return-void

    .line 1838
    :catch_8
    move-exception v0

    .line 1839
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in loadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public playSoundEffect(I)V
    .registers 7
    .parameter "effectType"

    .prologue
    .line 1753
    if-ltz p1, :cond_6

    const/16 v2, 0x13

    if-lt p1, v2, :cond_7

    .line 1789
    :cond_6
    :goto_6
    return-void

    .line 1765
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioManager;->querySoundEffectsEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1783
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1785
    .local v1, service:Landroid/media/IAudioService;
    :try_start_17
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_6

    .line 1786
    :catch_1b
    move-exception v0

    .line 1787
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public playSoundEffect(IF)V
    .registers 8
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1810
    if-ltz p1, :cond_6

    const/16 v2, 0x13

    if-lt p1, v2, :cond_7

    .line 1820
    :cond_6
    :goto_6
    return-void

    .line 1814
    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1816
    .local v1, service:Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_6

    .line 1817
    :catch_f
    move-exception v0

    .line 1818
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public preDispatchKeyEvent(II)V
    .registers 7
    .parameter "keyCode"
    .parameter "stream"

    .prologue
    .line 450
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1f

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_1f

    iget-wide v0, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    .line 458
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, p2, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 461
    :cond_1f
    return-void
.end method

.method public registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 2003
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2004
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2005
    monitor-exit v1

    .line 2009
    :goto_10
    return-void

    .line 2007
    :cond_11
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    monitor-exit v1

    goto :goto_10

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 7
    .parameter "eventReceiver"

    .prologue
    const/4 v4, 0x0

    .line 2099
    if-nez p1, :cond_4

    .line 2114
    :goto_3
    return-void

    .line 2102
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2103
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2108
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2110
    .local v0, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2111
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2113
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_3
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 8
    .parameter "pi"
    .parameter "eventReceiver"

    .prologue
    .line 2121
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 2122
    :cond_4
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :goto_b
    return-void

    .line 2125
    :cond_c
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2128
    .local v1, service:Landroid/media/IAudioService;
    :try_start_10
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_b

    .line 2129
    :catch_14
    move-exception v0

    .line 2130
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerMediaButtonIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 7
    .parameter "rcClient"

    .prologue
    .line 2172
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_9

    .line 2184
    :cond_8
    :goto_8
    return-void

    .line 2175
    :cond_9
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2177
    .local v1, service:Landroid/media/IAudioService;
    :try_start_d
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getIRemoteControlClient()Landroid/media/IRemoteControlClient;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IAudioService;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_8

    .line 2181
    :catch_1f
    move-exception v0

    .line 2182
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerRemoteControlClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 7
    .parameter "rcd"

    .prologue
    .line 2211
    if-nez p1, :cond_3

    .line 2220
    :goto_2
    return-void

    .line 2214
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2216
    .local v1, service:Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 2217
    :catch_b
    move-exception v0

    .line 2218
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public reloadAudioSettings()V
    .registers 6

    .prologue
    .line 2324
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2326
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2330
    :goto_7
    return-void

    .line 2327
    :catch_8
    move-exception v0

    .line 2328
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in reloadAudioSettings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 9
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2249
    if-nez p1, :cond_3

    .line 2258
    :goto_2
    return-void

    .line 2252
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2254
    .local v1, service:Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 2255
    :catch_b
    move-exception v0

    .line 2256
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in remoteControlDisplayUsesBitmapSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .registers 14
    .parameter "l"
    .parameter "streamType"
    .parameter "durationHint"

    .prologue
    .line 2050
    const/4 v8, 0x0

    .line 2051
    .local v8, status:I
    const/4 v1, 0x1

    if-lt p3, v1, :cond_7

    const/4 v1, 0x3

    if-le p3, v1, :cond_10

    .line 2053
    :cond_7
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Invalid duration hint, audio focus request denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2066
    .end local v8           #status:I
    .local v9, status:I
    :goto_f
    return v9

    .line 2056
    .end local v9           #status:I
    .restart local v8       #status:I
    :cond_10
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 2058
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2060
    .local v0, service:Landroid/media/IAudioService;
    :try_start_17
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2d

    move-result v8

    :goto_2b
    move v9, v8

    .line 2066
    .end local v8           #status:I
    .restart local v9       #status:I
    goto :goto_f

    .line 2063
    .end local v9           #status:I
    .restart local v8       #status:I
    :catch_2d
    move-exception v7

    .line 2064
    .local v7, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call requestAudioFocus() from AudioService due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public setBluetoothA2dpForceOn(Z)V
    .registers 7
    .parameter "on"

    .prologue
    .line 1289
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1293
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-ne v2, p1, :cond_24

    .line 1294
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothA2dpForceOn transfer value is same with current one! value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :goto_23
    return-void

    .line 1298
    :cond_24
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothA2dpForceOn(Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_27} :catch_28

    goto :goto_23

    .line 1299
    :catch_28
    move-exception v0

    .line 1300
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBluetoothA2dpForceOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 2
    .parameter "on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1260
    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 1230
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1232
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1236
    :goto_7
    return-void

    .line 1233
    :catch_8
    move-exception v0

    .line 1234
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setMicrophoneMute(Z)V
    .registers 2
    .parameter "on"

    .prologue
    .line 1379
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1380
    return-void
.end method

.method public setMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 1407
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1409
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1413
    :goto_9
    return-void

    .line 1410
    :catch_a
    move-exception v0

    .line 1411
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1611
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .registers 2
    .parameter "keyValuePairs"

    .prologue
    .line 1621
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1622
    return-void
.end method

.method public setRadioSpeakerOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 999
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1001
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setRadioSpeakerOn(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1005
    :goto_7
    return-void

    .line 1002
    :catch_8
    move-exception v0

    .line 1003
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRadioSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setRingerMode(I)V
    .registers 6
    .parameter "ringerMode"

    .prologue
    .line 742
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 751
    :goto_6
    return-void

    .line 745
    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 747
    .local v1, service:Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setRingerMode(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_6

    .line 748
    :catch_f
    move-exception v0

    .line 749
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public setRouting(III)V
    .registers 4
    .parameter "mode"
    .parameter "routes"
    .parameter "mask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1536
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 963
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 965
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 969
    :goto_7
    return-void

    .line 966
    :catch_8
    move-exception v0

    .line 967
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setStreamMute(IZ)V
    .registers 7
    .parameter "streamType"
    .parameter "state"

    .prologue
    .line 839
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 841
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamMute(IZLandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 845
    :goto_9
    return-void

    .line 842
    :catch_a
    move-exception v0

    .line 843
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setStreamSolo(IZ)V
    .registers 7
    .parameter "streamType"
    .parameter "state"

    .prologue
    .line 810
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 812
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamSolo(IZLandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 816
    :goto_9
    return-void

    .line 813
    :catch_a
    move-exception v0

    .line 814
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamSolo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setStreamVolume(III)V
    .registers 8
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 764
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 766
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setStreamVolume(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 770
    :goto_7
    return-void

    .line 767
    :catch_8
    move-exception v0

    .line 768
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setStreamVolumeForce(III)V
    .registers 8
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 774
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 776
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setStreamVolumeForce(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 780
    :goto_7
    return-void

    .line 777
    :catch_8
    move-exception v0

    .line 778
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolumeForce"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setStreamVolumeWithOutChange(III)V
    .registers 8
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 783
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 785
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setStreamVolumeWithOutChange(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 789
    :goto_7
    return-void

    .line 786
    :catch_8
    move-exception v0

    .line 787
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolumeForce"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setVibrateSetting(II)V
    .registers 8
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 942
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 943
    .local v1, service:Landroid/media/IAudioService;
    if-ltz p1, :cond_e

    const/4 v2, 0x1

    if-gt p1, v2, :cond_e

    if-ltz p2, :cond_e

    const/4 v2, 0x2

    if-le p2, v2, :cond_31

    .line 944
    :cond_e
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrong value in setVibrateSetting vibrateType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vibrateSetting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_31
    :try_start_31
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    .line 951
    :goto_34
    return-void

    .line 948
    :catch_35
    move-exception v0

    .line 949
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34
.end method

.method public setWiredHeadsetOn(Z)V
    .registers 2
    .parameter "on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1313
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 6
    .parameter "vibrateType"

    .prologue
    .line 891
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 893
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 896
    :goto_8
    return v2

    .line 894
    :catch_9
    move-exception v0

    .line 895
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in shouldVibrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public startBluetoothSco()V
    .registers 5

    .prologue
    .line 1194
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1196
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1200
    :goto_9
    return-void

    .line 1197
    :catch_a
    move-exception v0

    .line 1198
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in startBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public stopBluetoothSco()V
    .registers 5

    .prologue
    .line 1212
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1214
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1218
    :goto_9
    return-void

    .line 1215
    :catch_a
    move-exception v0

    .line 1216
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in stopBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public unloadSoundEffects()V
    .registers 6

    .prologue
    .line 1849
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1851
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1855
    :goto_7
    return-void

    .line 1852
    :catch_8
    move-exception v0

    .line 1853
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unloadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 2019
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2020
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    monitor-exit v1

    .line 2022
    return-void

    .line 2021
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "eventReceiver"

    .prologue
    const/4 v3, 0x0

    .line 2140
    if-nez p1, :cond_4

    .line 2150
    :goto_3
    return-void

    .line 2144
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2146
    .local v0, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2147
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2149
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_3
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 8
    .parameter "pi"
    .parameter "eventReceiver"

    .prologue
    .line 2156
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2158
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2162
    :goto_7
    return-void

    .line 2159
    :catch_8
    move-exception v0

    .line 2160
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterMediaButtonIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 7
    .parameter "rcClient"

    .prologue
    .line 2193
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_9

    .line 2203
    :cond_8
    :goto_8
    return-void

    .line 2196
    :cond_9
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2198
    .local v1, service:Landroid/media/IAudioService;
    :try_start_d
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getIRemoteControlClient()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_8

    .line 2200
    :catch_19
    move-exception v0

    .line 2201
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 7
    .parameter "rcd"

    .prologue
    .line 2228
    if-nez p1, :cond_3

    .line 2237
    :goto_2
    return-void

    .line 2231
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2233
    .local v1, service:Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 2234
    :catch_b
    move-exception v0

    .line 2235
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
