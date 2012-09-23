.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanel$LoadListener;,
        Landroid/view/VolumePanel$StreamControl;,
        Landroid/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final NUM_VOLUME_EFFECT:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_VOLUME_CONTROL:I = 0x0

.field private static final STREAMS:[Landroid/view/VolumePanel$StreamResources; = null

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field static getCurrentVol:I

.field static mIsLoadSoundPool:Z

.field static mPrevVol:I

.field static mProgressChanged:Z


# instance fields
.field private SOUND_EFFECT_FILES_MAP:[[I

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mToast:Landroid/widget/Toast;

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    sput-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    .line 71
    sput-boolean v2, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    .line 139
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TW_Volume_control.ogg"

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 152
    sput v2, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 153
    sput v2, Landroid/view/VolumePanel;->mPrevVol:I

    .line 154
    sput-boolean v2, Landroid/view/VolumePanel;->mProgressChanged:Z

    .line 216
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->FmRadioStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VideoCallStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .registers 16
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 241
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 127
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 146
    new-array v6, v7, [[I

    new-array v9, v12, [I

    fill-array-data v9, :array_160

    aput-object v9, v6, v8

    iput-object v6, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    .line 242
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 243
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 244
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 246
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 248
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x10900e9

    invoke-virtual {v2, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 249
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/VolumePanel$1;

    invoke-direct {v9, p0}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v9, 0x102037d

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 256
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v9, 0x102037e

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 257
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v9, 0x1020380

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 258
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v9, 0x102037f

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 261
    const-string v6, ""

    invoke-static {p1, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    .line 263
    iget-object v6, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    const/16 v9, 0x50

    invoke-virtual {v6, v9, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 265
    new-instance v6, Landroid/view/VolumePanel$2;

    const v9, 0x1030305

    invoke-direct {v6, p0, p1, v9}, Landroid/view/VolumePanel$2;-><init>(Landroid/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 274
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v9, "Volume control"

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 276
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v9, Landroid/view/VolumePanel$3;

    invoke-direct {v9, p0}, Landroid/view/VolumePanel$3;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 283
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 284
    .local v5, window:Landroid/view/Window;
    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 285
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 286
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v10, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 288
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1050048

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 290
    const/16 v6, 0x7e4

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 291
    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 292
    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 294
    const v6, 0x40028

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 297
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v6

    new-array v6, v6, [Landroid/media/ToneGenerator;

    iput-object v6, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 298
    new-instance v6, Landroid/os/Vibrator;

    invoke-direct {v6}, Landroid/os/Vibrator;-><init>()V

    iput-object v6, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 300
    new-instance v6, Landroid/media/SoundPool;

    invoke-direct {v6, v7, v12, v8}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 301
    iget-object v6, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    new-instance v9, Landroid/view/VolumePanel$LoadListener;

    invoke-direct {v9, p0, v10}, Landroid/view/VolumePanel$LoadListener;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    invoke-virtual {v6, v9}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 302
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_f7
    if-ge v0, v7, :cond_12d

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/media/audio/ui/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v10, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v10, v10, v0

    aget v10, v10, v8

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, filePath:Ljava/lang/String;
    iget-object v6, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    iget-object v9, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v9, v1, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v9

    aput v9, v6, v7

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_f7

    .line 308
    .end local v1           #filePath:Ljava/lang/String;
    :cond_12d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1110029

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    .line 309
    iget-boolean v6, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v6, :cond_157

    move v6, v7

    :goto_13f
    iput-boolean v6, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 311
    iget-boolean v6, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v6, :cond_159

    .line 312
    iget-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v6, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :goto_153
    invoke-direct {p0}, Landroid/view/VolumePanel;->listenToRingerMode()V

    .line 319
    return-void

    :cond_157
    move v6, v8

    .line 309
    goto :goto_13f

    .line 315
    :cond_159
    iget-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_153

    .line 146
    nop

    :array_160
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Landroid/view/VolumePanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/VolumePanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/VolumePanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$202(Landroid/view/VolumePanel;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/VolumePanel;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .registers 6

    .prologue
    .line 399
    iget-boolean v3, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_5

    .line 411
    :cond_4
    return-void

    .line 401
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 403
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 404
    .local v2, streamType:I
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_1d

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_20

    .line 401
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 407
    :cond_20
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 408
    .local v1, sc:Landroid/view/VolumePanel$StreamControl;
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 409
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_1d
.end method

.method private collapse()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 453
    iget-object v2, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v2, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 456
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_22

    .line 457
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 459
    :cond_22
    return-void
.end method

.method private createSliders()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 354
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 356
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 357
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 358
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_a3

    .line 359
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 360
    .local v5, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v6, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 361
    .local v6, streamType:I
    new-instance v4, Landroid/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    .line 362
    .local v4, sc:Landroid/view/VolumePanel$StreamControl;
    iput v6, v4, Landroid/view/VolumePanel$StreamControl;->streamType:I

    .line 363
    const v7, 0x10900ea

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 364
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 365
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x1020381

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 366
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 367
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 368
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 369
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 370
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x1020319

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 372
    const/4 v7, 0x6

    if-eq v6, v7, :cond_7d

    if-nez v6, :cond_a1

    :cond_7d
    const/4 v2, 0x1

    .line 374
    .local v2, plusOne:I
    :goto_7e
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v8, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 375
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 376
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 377
    iget-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d

    .line 372
    .end local v2           #plusOne:I
    :cond_a1
    const/4 v2, 0x0

    goto :goto_7e

    .line 379
    .end local v4           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #streamRes:Landroid/view/VolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_a3
    return-void
.end method

.method private expand()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 444
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 445
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_17

    .line 446
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 448
    :cond_17
    iget-object v2, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v2, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 450
    return-void
.end method

.method private forceTimeout()V
    .registers 2

    .prologue
    const/4 v0, 0x5

    .line 844
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 845
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 846
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .registers 6
    .parameter "streamType"

    .prologue
    .line 729
    monitor-enter p0

    .line 730
    :try_start_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_36

    if-nez v1, :cond_12

    .line 732
    :try_start_7
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_36
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_12} :catch_18

    .line 740
    :cond_12
    :goto_12
    :try_start_12
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    return-object v1

    .line 733
    :catch_18
    move-exception v0

    .line 734
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_12

    .line 735
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 741
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_36
    move-exception v1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private isExpanded()Z
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isMuted(I)Z
    .registers 3
    .parameter "streamType"

    .prologue
    .line 350
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method private listenToRingerMode()V
    .registers 4

    .prologue
    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$4;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$4;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    return-void
.end method

.method private reorderSliders(I)V
    .registers 6
    .parameter "activeStreamType"

    .prologue
    .line 382
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 384
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 385
    .local v0, active:Landroid/view/VolumePanel$StreamControl;
    if-nez v0, :cond_32

    .line 386
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 395
    :goto_2e
    invoke-direct {p0}, Landroid/view/VolumePanel;->addOtherVolumes()V

    .line 396
    return-void

    .line 389
    :cond_32
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 390
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 391
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 392
    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_2e
.end method

.method private resetTimeout()V
    .registers 4

    .prologue
    const/4 v0, 0x5

    .line 839
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 840
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 841
    return-void
.end method

.method private setMusicIcon(II)V
    .registers 7
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 750
    iget-object v2, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 751
    .local v1, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_2d

    .line 752
    iput p1, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 753
    iput p2, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 756
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 757
    .local v0, index:I
    iget v2, v1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_26

    if-nez v0, :cond_2e

    .line 758
    :cond_26
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 763
    .end local v0           #index:I
    :cond_2d
    :goto_2d
    return-void

    .line 760
    .restart local v0       #index:I
    :cond_2e
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2d
.end method

.method private setRadioIcon(II)V
    .registers 7
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 766
    iget-object v2, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 767
    .local v1, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_2e

    .line 768
    iput p1, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 769
    iput p2, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 772
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 773
    .local v0, index:I
    iget v2, v1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_27

    if-nez v0, :cond_2f

    .line 774
    :cond_27
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 779
    .end local v0           #index:I
    :cond_2e
    :goto_2e
    return-void

    .line 776
    .restart local v0       #index:I
    :cond_2f
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2e
.end method

.method private updateSlider(Landroid/view/VolumePanel$StreamControl;)V
    .registers 9
    .parameter "sc"

    .prologue
    const v6, 0x10802b1

    const v5, 0x10802b0

    const/4 v4, 0x3

    .line 415
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 416
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 417
    .local v0, muted:Z
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_55

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_20
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3b

    if-eqz v0, :cond_3b

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 420
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x10802ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    :cond_3b
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v4, :cond_5c

    if-nez v0, :cond_5c

    .line 426
    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x380

    if-eqz v1, :cond_58

    .line 430
    const v1, 0x10802a6

    const v2, 0x10802a7

    invoke-direct {p0, v1, v2}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    .line 437
    :cond_54
    :goto_54
    return-void

    .line 417
    :cond_55
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_20

    .line 432
    :cond_58
    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_54

    .line 434
    :cond_5c
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_54

    if-nez v0, :cond_54

    .line 435
    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setRadioIcon(II)V

    goto :goto_54
.end method

.method private updateStates()V
    .registers 5

    .prologue
    .line 462
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 463
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 464
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 465
    .local v2, sc:Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 467
    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_1b
    return-void
.end method


# virtual methods
.method public forceDismiss()V
    .registers 1

    .prologue
    .line 849
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    .line 850
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 794
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 836
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 797
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_5

    .line 802
    :pswitch_e
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_5

    .line 807
    :pswitch_12
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_5

    .line 812
    :pswitch_16
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_5

    .line 823
    :pswitch_1e
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 824
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 825
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    goto :goto_5

    .line 830
    :pswitch_2f
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 831
    invoke-direct {p0}, Landroid/view/VolumePanel;->updateStates()V

    goto :goto_5

    .line 794
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_16
        :pswitch_12
        :pswitch_5
        :pswitch_1e
        :pswitch_2f
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 883
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 884
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 886
    :cond_7
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 887
    return-void
.end method

.method protected onFreeResources()V
    .registers 4

    .prologue
    .line 782
    monitor-enter p0

    .line 783
    :try_start_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_1d

    .line 784
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    .line 785
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 787
    :cond_15
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 783
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 789
    :cond_1d
    monitor-exit p0

    .line 790
    return-void

    .line 789
    .end local v0           #i:I
    :catchall_1f
    move-exception v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method protected onPlaySound(II)V
    .registers 14
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 665
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 666
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 668
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 671
    :cond_e
    monitor-enter p0

    .line 673
    :try_start_f
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_15

    .line 674
    monitor-exit p0

    .line 700
    :goto_14
    return-void

    .line 676
    :cond_15
    sget-boolean v0, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    if-nez v0, :cond_60

    .line 678
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "soundpool is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v8, 0x0

    .local v8, effect:I
    :goto_22
    if-ge v8, v4, :cond_5b

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v2, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 681
    .local v9, filePath:Ljava/lang/String;
    iget-object v0, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v0, v0, v8

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1
    :try_end_58
    .catchall {:try_start_f .. :try_end_58} :catchall_8a

    .line 679
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 684
    .end local v9           #filePath:Ljava/lang/String;
    :cond_5b
    const-wide/16 v0, 0x28

    :try_start_5d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_8a
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_60} :catch_85

    .line 690
    .end local v8           #effect:I
    :cond_60
    :goto_60
    :try_start_60
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 691
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 697
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_8a

    .line 698
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_14

    .line 685
    .restart local v8       #effect:I
    :catch_85
    move-exception v7

    .line 687
    .local v7, e1:Ljava/lang/InterruptedException;
    :try_start_86
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_60

    .line 697
    .end local v7           #e1:Ljava/lang/InterruptedException;
    .end local v8           #effect:I
    :catchall_8a
    move-exception v0

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v4, 0x0

    .line 854
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 855
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_35

    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_35

    move-object v0, v1

    .line 856
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 860
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-nez v2, :cond_24

    .line 861
    const/4 v2, 0x1

    if-gt p2, v2, :cond_22

    .line 862
    const/4 p2, 0x1

    .line 863
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 864
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 866
    :cond_22
    add-int/lit8 p2, p2, -0x1

    .line 869
    :cond_24
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_35

    .line 870
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 873
    .end local v0           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_35
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 874
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .registers 12
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 550
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_b3

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 554
    .local v0, index:I
    :goto_10
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 556
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_43

    .line 557
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onShowVolumeChanged(streamType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_43
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v1

    .line 565
    .local v1, max:I
    packed-switch p1, :pswitch_data_114

    .line 636
    :cond_4c
    :goto_4c
    :pswitch_4c
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 637
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_6c

    .line 638
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-eq v4, v1, :cond_67

    .line 639
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 641
    :cond_67
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 644
    :cond_6c
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_8c

    .line 645
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 646
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 648
    iget-boolean v4, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_87

    .line 649
    invoke-direct {p0}, Landroid/view/VolumePanel;->collapse()V

    .line 651
    :cond_87
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 655
    :cond_8c
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_b2

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-eqz v4, :cond_b2

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_b2

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, v8}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 659
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 661
    :cond_b2
    return-void

    .line 550
    .end local v0           #index:I
    .end local v1           #max:I
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_b3
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    goto/16 :goto_10

    .line 569
    .restart local v0       #index:I
    .restart local v1       #max:I
    :pswitch_bb
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 571
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_4c

    .line 572
    const-string v4, "VolumePanel"

    const-string/jumbo v5, "onShowVolumeChanged ringuri is null on STREAM_RING.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iput-boolean v7, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_4c

    .line 580
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_cf
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_e5

    .line 584
    const v4, 0x10802a6

    const v5, 0x10802a7

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_4c

    .line 586
    :cond_e5
    const v4, 0x10802b0

    const v5, 0x10802b1

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_4c

    .line 598
    :pswitch_f0
    add-int/lit8 v0, v0, 0x1

    .line 599
    add-int/lit8 v1, v1, 0x1

    .line 601
    if-nez v0, :cond_4c

    .line 603
    const/4 v0, 0x1

    goto/16 :goto_4c

    .line 615
    :pswitch_f9
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 617
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_4c

    .line 618
    const-string v4, "VolumePanel"

    const-string/jumbo v5, "onShowVolumeChanged ringuri is null on STREAM_NOTIFICATION.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iput-boolean v7, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_4c

    .line 630
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_10e
    add-int/lit8 v0, v0, 0x1

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4c

    .line 565
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_4c
        :pswitch_bb
        :pswitch_cf
        :pswitch_4c
        :pswitch_f9
        :pswitch_10e
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 877
    return-void
.end method

.method protected onStopSounds()V
    .registers 5

    .prologue
    .line 704
    monitor-enter p0

    .line 705
    :try_start_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 706
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_15

    .line 707
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 708
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_12

    .line 709
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 706
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 712
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_15
    monitor-exit p0

    .line 713
    return-void

    .line 712
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_17
    move-exception v3

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 880
    return-void
.end method

.method protected onVibrate()V
    .registers 4

    .prologue
    .line 718
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 723
    :goto_9
    return-void

    .line 722
    :cond_a
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_9
.end method

.method protected onVolumeChanged(II)V
    .registers 14
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const v10, 0x10802b0

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x3

    .line 485
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_35

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onVolumeChanged(streamType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_35
    if-eq p1, v6, :cond_39

    if-ne p1, v9, :cond_9e

    .line 488
    :cond_39
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    .line 489
    .local v1, volumeLimitIndex:I
    iget-object v3, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    sput v3, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 491
    iget-object v3, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "audioParam;curDevice"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, isMusicHPH:Ljava/lang/String;
    const-string v3, "HPH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    sget v3, Landroid/view/VolumePanel;->getCurrentVol:I

    if-lt v3, v1, :cond_7d

    sget v3, Landroid/view/VolumePanel;->mPrevVol:I

    if-ge v3, v1, :cond_7d

    .line 494
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_68

    const-string v3, "VolumePanel"

    const-string v4, "[Ear Shock] Show warning message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_68
    const v2, 0x10405df

    .line 497
    .local v2, warningMessage:I
    iget-object v3, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v3, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 500
    .end local v2           #warningMessage:I
    :cond_7d
    sget v3, Landroid/view/VolumePanel;->getCurrentVol:I

    sput v3, Landroid/view/VolumePanel;->mPrevVol:I

    .line 503
    if-ne p1, v6, :cond_96

    .line 505
    iget-object v3, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    and-int/lit16 v3, v3, 0x380

    if-eqz v3, :cond_db

    .line 509
    const v3, 0x10802a6

    const v4, 0x10802a7

    invoke-direct {p0, v3, v4}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    .line 515
    :cond_96
    :goto_96
    if-ne p1, v9, :cond_9e

    .line 516
    const v3, 0x10802b1

    invoke-direct {p0, v10, v3}, Landroid/view/VolumePanel;->setRadioIcon(II)V

    .line 520
    .end local v0           #isMusicHPH:Ljava/lang/String;
    .end local v1           #volumeLimitIndex:I
    :cond_9e
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_ad

    .line 521
    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e2

    .line 522
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 527
    :cond_aa
    :goto_aa
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 531
    :cond_ad
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_bd

    .line 532
    invoke-virtual {p0, v7}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 533
    invoke-virtual {p0, v7, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 536
    :cond_bd
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_cb

    .line 537
    invoke-virtual {p0, v7}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 538
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 539
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 542
    :cond_cb
    invoke-virtual {p0, v8}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 543
    invoke-virtual {p0, v8}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 545
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 547
    return-void

    .line 511
    .restart local v0       #isMusicHPH:Ljava/lang/String;
    .restart local v1       #volumeLimitIndex:I
    :cond_db
    const v3, 0x10802b1

    invoke-direct {p0, v10, v3}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_96

    .line 524
    .end local v0           #isMusicHPH:Ljava/lang/String;
    .end local v1           #volumeLimitIndex:I
    :cond_e2
    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v3, p1, :cond_aa

    .line 525
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    goto :goto_aa
.end method

.method public postVolumeChanged(II)V
    .registers 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 476
    :goto_7
    return-void

    .line 471
    :cond_8
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_f

    .line 472
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 474
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 475
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7
.end method
