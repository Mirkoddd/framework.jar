.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field private static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field private static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_SIGNATURE_FALLBACK:Ljava/lang/String; = "lockscreen.signature_fallback"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_RECOVERY_PASSWORD_FILE:Ljava/lang/String; = "recovery_password.key"

.field private static final LOCK_SIGNATURE_FILE:Ljava/lang/String; = "signature.key"

.field private static final LOCK_SPAREPASSWORD_FILE:Ljava/lang/String; = "sparepassword.key"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field private static final OPTION_ENABLE_FACELOCK:Ljava/lang/String; = "enable_facelock"

.field private static ORIGINAL_PASSWORD_HASH_SIZE:I = 0x0

.field private static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final SIGNATURE_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.signatureeverchosen"

.field private static final SIGNATURE_REGISTERED_KEY:Ljava/lang/String; = "lockscreen.signatureregistered"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static mSimLockPrepared:Z

.field private static final sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroSignatureFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroSparePasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLockPasswordFilename:Ljava/lang/String;

.field private static sLockPatternFilename:Ljava/lang/String;

.field private static sLockRecoveryPasswordFilename:Ljava/lang/String;

.field private static sLockSignatureFilename:Ljava/lang/String;

.field private static sLockSparePasswordFilename:Ljava/lang/String;

.field private static sPasswordObserver:Landroid/os/FileObserver;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 164
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroSignatureFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroSparePasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    const/16 v0, 0x48

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->ORIGINAL_PASSWORD_HASH_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 221
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    if-nez v2, :cond_111

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/system/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "gesture.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "password.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "signature.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockSignatureFilename:Ljava/lang/String;

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "sparepassword.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockSparePasswordFilename:Ljava/lang/String;

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "recovery_password.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    .line 231
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-lez v2, :cond_112

    move v2, v3

    :goto_ad
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-lez v2, :cond_114

    move v2, v3

    :goto_c2
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 233
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroSignatureFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockSignatureFilename:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-lez v2, :cond_116

    move v2, v3

    :goto_d7
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroSparePasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockSparePasswordFilename:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-lez v2, :cond_118

    move v2, v3

    :goto_ec
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-lez v5, :cond_11a

    :goto_100
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    const/16 v1, 0x388

    .line 239
    .local v1, fileObserverMask:I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    .line 240
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 250
    .end local v0           #dataSystemDirectory:Ljava/lang/String;
    .end local v1           #fileObserverMask:I
    :cond_111
    return-void

    .restart local v0       #dataSystemDirectory:Ljava/lang/String;
    :cond_112
    move v2, v4

    .line 231
    goto :goto_ad

    :cond_114
    move v2, v4

    .line 232
    goto :goto_c2

    :cond_116
    move v2, v4

    .line 233
    goto :goto_d7

    :cond_118
    move v2, v4

    .line 234
    goto :goto_ec

    :cond_11a
    move v3, v4

    .line 235
    goto :goto_100
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockSparePasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroSparePasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockSignatureFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroSignatureFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 6
    .parameter "password"

    .prologue
    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 767
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 768
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_19

    .line 769
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 770
    const/4 v0, 0x1

    .line 768
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 772
    :cond_17
    const/4 v1, 0x1

    goto :goto_14

    .line 776
    :cond_19
    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 777
    const/high16 v4, 0x5

    .line 785
    :goto_1f
    return v4

    .line 779
    :cond_20
    if-eqz v1, :cond_25

    .line 780
    const/high16 v4, 0x4

    goto :goto_1f

    .line 782
    :cond_25
    if-eqz v0, :cond_2a

    .line 783
    const/high16 v4, 0x2

    goto :goto_1f

    .line 785
    :cond_2a
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private finishBiometricWeak()V
    .registers 4

    .prologue
    .line 1759
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1763
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1764
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1766
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1767
    return-void
.end method

.method private finishSignature()V
    .registers 4

    .prologue
    .line 1778
    const-string/jumbo v1, "lockscreen.signatureeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1781
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1782
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.signaturelock"

    const-string v2, "com.sec.android.signaturelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1784
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1785
    return-void
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 942
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "secureSettingKey"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1555
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_e

    move v0, v1

    :goto_7
    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_10

    :goto_d
    return v1

    :cond_e
    move v0, v2

    goto :goto_7

    :cond_10
    move v1, v2

    goto :goto_d
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 6
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSalt()Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1241
    const-string/jumbo v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1242
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_24

    .line 1244
    :try_start_d
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1245
    const-string/jumbo v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1246
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_24} :catch_29

    .line 1252
    :cond_24
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1247
    :catch_29
    move-exception v0

    .line 1249
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "secureSettingKey"

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1221
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 1222
    const/4 v1, 0x0

    .line 1236
    :goto_3
    return-object v1

    .line 1225
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1226
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 1227
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 1228
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1229
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1227
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1232
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1233
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 1234
    .local v1, hash:[B
    goto :goto_3

    .line 1235
    .end local v1           #hash:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_2f
    move-exception v4

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 1236
    goto :goto_3
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1200
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 1201
    const-string v4, ""

    .line 1210
    :goto_4
    return-object v4

    .line 1203
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1205
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 1206
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 1207
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1208
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1206
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1210
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private readSimLockState()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1596
    const-string/jumbo v4, "ril.pin_mode"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1597
    .local v1, pinMode:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1599
    .local v0, isAirplaneMode:I
    if-ne v0, v3, :cond_16

    .line 1603
    :cond_15
    :goto_15
    return v2

    .line 1600
    :cond_16
    if-eqz v1, :cond_15

    .line 1601
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1602
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v2, v3

    goto :goto_15
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 5
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    .line 1561
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1563
    return-void

    .line 1561
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 5
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1571
    return-void
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1579
    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1184
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1186
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1187
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    .line 1188
    aget-byte v0, v1, v2

    .line 1189
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1191
    .end local v0           #b:B
    :cond_1c
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .parameter "ary"

    .prologue
    .line 1318
    const-string v0, "0123456789ABCDEF"

    .line 1319
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 1320
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_43

    .line 1321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1320
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1324
    :cond_43
    return-object v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .registers 8
    .parameter "password"

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 791
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_c

    .line 807
    :goto_b
    return-void

    .line 795
    :cond_c
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 796
    .local v3, service:Landroid/os/IBinder;
    if-nez v3, :cond_1d

    .line 797
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 801
    :cond_1d
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 803
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_21
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->changeEncryptionPassword(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_b

    .line 804
    :catch_25
    move-exception v1

    .line 805
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .registers 11
    .parameter "password"

    .prologue
    const/4 v6, 0x1

    .line 382
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v8, "r"

    invoke-direct {v4, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .local v4, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v3, v7

    .line 384
    .local v3, length:I
    new-array v5, v3, [B

    .line 386
    .local v5, stored:[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 387
    .local v1, got:I
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 388
    if-gtz v1, :cond_1e

    .line 401
    .end local v1           #got:I
    .end local v3           #length:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #stored:[B
    :goto_1d
    return v6

    .line 393
    .restart local v1       #got:I
    .restart local v3       #length:I
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #stored:[B
    :cond_1e
    sget v7, Lcom/android/internal/widget/LockPatternUtils;->ORIGINAL_PASSWORD_HASH_SIZE:I

    if-ne v3, v7, :cond_2b

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    goto :goto_1d

    .line 396
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_32} :catch_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_32} :catch_36

    move-result v6

    goto :goto_1d

    .line 398
    .end local v1           #got:I
    .end local v3           #length:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #stored:[B
    :catch_34
    move-exception v0

    .line 399
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_1d

    .line 400
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_36
    move-exception v2

    .line 401
    .local v2, ioe:Ljava/io/IOException;
    goto :goto_1d
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .registers 9
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 449
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 450
    .local v2, passwordHashString:Ljava/lang/String;
    const-string/jumbo v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, passwordHistory:Ljava/lang/String;
    if-nez v3, :cond_14

    .line 465
    :cond_13
    :goto_13
    return v5

    .line 455
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 456
    .local v1, passwordHashLength:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 457
    .local v4, passwordHistoryLength:I
    if-eqz v4, :cond_13

    .line 460
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 462
    .local v0, neededPasswordHistoryLength:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2d

    .line 463
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 465
    :cond_2d
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_13
.end method

.method public checkPattern(Ljava/util/List;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x1

    .line 357
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 359
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 360
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 361
    if-gtz v1, :cond_1e

    .line 369
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_1d
    return v5

    .line 365
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_1e
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_25} :catch_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_29

    move-result v5

    goto :goto_1d

    .line 366
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_27
    move-exception v0

    .line 367
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_1d

    .line 368
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_29
    move-exception v2

    .line 369
    .local v2, ioe:Ljava/io/IOException;
    goto :goto_1d
.end method

.method public checkPcwPassword(Ljava/lang/String;)Z
    .registers 10
    .parameter "password"

    .prologue
    const/4 v4, 0x0

    .line 1789
    if-nez p1, :cond_4

    .line 1811
    :cond_3
    :goto_3
    return v4

    .line 1792
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "lock_pcw_password"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1793
    .local v2, savedPassword:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1795
    .local v0, base64:Ljava/lang/String;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "savedPassword = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " input password = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :try_start_31
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1799
    .local v3, sha1:[B
    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1801
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sha1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , base64 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_67} :catch_73

    .line 1806
    .end local v3           #sha1:[B
    :goto_67
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1808
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1809
    const/4 v4, 0x1

    goto :goto_3

    .line 1802
    :catch_73
    move-exception v1

    .line 1803
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v5, "LockPatternUtils"

    const-string v6, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method

.method public checkSparePassword(Ljava/lang/String;)Z
    .registers 12
    .parameter "password"

    .prologue
    const/4 v7, 0x1

    .line 407
    const-string v8, "LockPatternUtils"

    const-string v9, "(checkSparePassword(), (1)"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v4, 0x0

    .line 411
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_9
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockSparePasswordFilename:Ljava/lang/String;

    const-string/jumbo v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_13} :catch_5a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_63

    .line 412
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .local v5, raf:Ljava/io/RandomAccessFile;
    :try_start_13
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v3, v8

    .line 413
    .local v3, length:I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 414
    .local v6, stored:[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 415
    .local v1, got:I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 416
    if-gtz v1, :cond_38

    .line 417
    const-string v8, "LockPatternUtils"

    const-string v9, "(checkSparePassword(), (2)"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_31} :catch_81
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_31} :catch_7e

    .line 432
    if-eqz v5, :cond_36

    .line 434
    :try_start_33
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_73

    :cond_36
    :goto_36
    move-object v4, v5

    .line 437
    .end local v1           #got:I
    .end local v3           #length:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_37
    :goto_37
    return v7

    .line 422
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #got:I
    .restart local v3       #length:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :cond_38
    :try_start_38
    sget v8, Lcom/android/internal/widget/LockPatternUtils;->ORIGINAL_PASSWORD_HASH_SIZE:I

    if-ne v3, v8, :cond_4b

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_43} :catch_81
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_7e

    move-result v7

    .line 432
    if-eqz v5, :cond_49

    .line 434
    :try_start_46
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_75

    :cond_49
    :goto_49
    move-object v4, v5

    .line 437
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_37

    .line 425
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :cond_4b
    :try_start_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_52} :catch_81
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_52} :catch_7e

    move-result v7

    .line 432
    if-eqz v5, :cond_58

    .line 434
    :try_start_55
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_77

    :cond_58
    :goto_58
    move-object v4, v5

    .line 437
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_37

    .line 427
    .end local v1           #got:I
    .end local v3           #length:I
    .end local v6           #stored:[B
    :catch_5a
    move-exception v0

    .line 432
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    :goto_5b
    if-eqz v4, :cond_37

    .line 434
    :try_start_5d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_37

    .line 435
    :catch_61
    move-exception v8

    goto :goto_37

    .line 429
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_63
    move-exception v2

    .line 432
    .local v2, ioe:Ljava/io/IOException;
    :goto_64
    if-eqz v4, :cond_37

    .line 434
    :try_start_66
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_37

    .line 435
    :catch_6a
    move-exception v8

    goto :goto_37

    .line 432
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_6c
    move-exception v7

    :goto_6d
    if-eqz v4, :cond_72

    .line 434
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_79

    .line 437
    :cond_72
    :goto_72
    throw v7

    .line 435
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #got:I
    .restart local v3       #length:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :catch_73
    move-exception v8

    goto :goto_36

    :catch_75
    move-exception v8

    goto :goto_49

    :catch_77
    move-exception v8

    goto :goto_58

    .end local v1           #got:I
    .end local v3           #length:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_79
    move-exception v8

    goto :goto_72

    .line 432
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catchall_7b
    move-exception v7

    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_6d

    .line 429
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catch_7e
    move-exception v2

    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_64

    .line 427
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catch_81
    move-exception v0

    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_5b
.end method

.method public clearLock(Z)V
    .registers 5
    .parameter "isFallback"

    .prologue
    const/high16 v2, 0x1

    const/4 v1, 0x0

    .line 593
    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 594
    :cond_8
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 596
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 597
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockSpare(Ljava/lang/String;I)V

    .line 598
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 599
    const-string/jumbo v0, "lockscreen.password_type_alternate"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 600
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_pcw_enabled"

    const-string v2, "10"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 601
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_pcw_password"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 602
    return-void
.end method

.method public clearLockExceptPwd(Z)V
    .registers 5
    .parameter "isFallback"

    .prologue
    .line 607
    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 608
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 609
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 610
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 611
    const-string/jumbo v0, "lockscreen.password_type_alternate"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 612
    return-void
.end method

.method public clearPasswordLock()V
    .registers 4

    .prologue
    .line 642
    const/4 v0, 0x0

    const/high16 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 644
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 645
    return-void
.end method

.method public clearPatternLock()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 651
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 652
    const/high16 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockSpare(Ljava/lang/String;I)V

    .line 653
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 654
    return-void
.end method

.method deleteGallery()V
    .registers 5

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 671
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupFaceLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 673
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 674
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 676
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method public deleteTempGallery()V
    .registers 5

    .prologue
    .line 660
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupFaceLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 662
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 664
    return-void
.end method

.method public getActivePasswordQuality()I
    .registers 6

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 545
    .local v0, activePasswordQuality:I
    const-string/jumbo v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 547
    .local v1, quality:I
    sparse-switch v1, :sswitch_data_6a

    .line 586
    :cond_f
    :goto_f
    return v0

    .line 549
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 550
    const/high16 v0, 0x1

    goto :goto_f

    .line 554
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 555
    const v0, 0x8000

    goto :goto_f

    .line 559
    :sswitch_23
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 560
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivePasswordQuality() quality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const v0, 0x9000

    goto :goto_f

    .line 565
    :sswitch_45
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 566
    const/high16 v0, 0x2

    goto :goto_f

    .line 570
    :sswitch_4e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 571
    const/high16 v0, 0x4

    goto :goto_f

    .line 575
    :sswitch_57
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 576
    const/high16 v0, 0x5

    goto :goto_f

    .line 580
    :sswitch_60
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 581
    const/high16 v0, 0x6

    goto :goto_f

    .line 547
    nop

    :sswitch_data_6a
    .sparse-switch
        0x8000 -> :sswitch_19
        0x9000 -> :sswitch_23
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_45
        0x40000 -> :sswitch_4e
        0x50000 -> :sswitch_57
        0x60000 -> :sswitch_60
    .end sparse-switch
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 207
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 6

    .prologue
    const-wide/32 v3, 0x10000

    .line 1147
    const-string/jumbo v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1151
    .local v0, quality:I
    const v1, 0x8000

    if-eq v0, v1, :cond_15

    const v1, 0x9000

    if-ne v0, v1, :cond_1d

    .line 1153
    :cond_15
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1157
    :cond_1d
    return v0
.end method

.method public getLockSignatureCorrnidates([I)V
    .registers 12
    .parameter "nCoordinate"

    .prologue
    .line 814
    const/4 v4, 0x0

    .line 817
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockSignatureFilename:Ljava/lang/String;

    const-string/jumbo v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_62
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_88

    .line 818
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .local v5, raf:Ljava/io/RandomAccessFile;
    :try_start_b
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .line 819
    .local v6, stored:[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_c2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_bf

    move-result v1

    .line 820
    .local v1, got:I
    if-gtz v1, :cond_26

    .line 834
    if-eqz v5, :cond_1f

    .line 835
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21

    :cond_1f
    :goto_1f
    move-object v4, v5

    .line 841
    .end local v1           #got:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_20
    :goto_20
    return-void

    .line 837
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #got:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :catch_21
    move-exception v3

    .line 838
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 824
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_26
    const/4 v2, 0x0

    .local v2, index:I
    :goto_27
    :try_start_27
    div-int/lit8 v7, v1, 0x4

    if-ge v2, v7, :cond_55

    .line 825
    mul-int/lit8 v7, v2, 0x4

    aget-byte v7, v6, v7

    shl-int/lit8 v7, v7, 0x18

    mul-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v8

    mul-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    mul-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    aput v7, p1, v2
    :try_end_52
    .catchall {:try_start_27 .. :try_end_52} :catchall_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_52} :catch_c2
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_52} :catch_bf

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 834
    :cond_55
    if-eqz v5, :cond_5a

    .line 835
    :try_start_57
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5c

    :cond_5a
    move-object v4, v5

    .line 839
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_20

    .line 837
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catch_5c
    move-exception v3

    .line 838
    .restart local v3       #ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 840
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_20

    .line 828
    .end local v1           #got:I
    .end local v2           #index:I
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v6           #stored:[B
    :catch_62
    move-exception v0

    .line 829
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    :goto_63
    :try_start_63
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_b0

    .line 834
    if-eqz v4, :cond_20

    .line 835
    :try_start_7f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_20

    .line 837
    :catch_83
    move-exception v3

    .line 838
    .restart local v3       #ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    .line 830
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_88
    move-exception v3

    .line 831
    .restart local v3       #ioe:Ljava/io/IOException;
    :goto_89
    :try_start_89
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read signature from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_89 .. :try_end_a3} :catchall_b0

    .line 834
    if-eqz v4, :cond_20

    .line 835
    :try_start_a5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_aa

    goto/16 :goto_20

    .line 837
    :catch_aa
    move-exception v3

    .line 838
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_20

    .line 833
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_b0
    move-exception v7

    .line 834
    :goto_b1
    if-eqz v4, :cond_b6

    .line 835
    :try_start_b3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    .line 839
    :cond_b6
    :goto_b6
    throw v7

    .line 837
    :catch_b7
    move-exception v3

    .line 838
    .restart local v3       #ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b6

    .line 833
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catchall_bc
    move-exception v7

    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_b1

    .line 830
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catch_bf
    move-exception v3

    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_89

    .line 828
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catch_c2
    move-exception v0

    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_63
.end method

.method public getLockSignatureDataPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 810
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockSignatureFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 1488
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1489
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1490
    .local v2, now:J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_18

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_19

    :cond_18
    move-wide v0, v4

    .line 1493
    .end local v0           #deadline:J
    :cond_19
    return-wide v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1546
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1548
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1549
    :cond_11
    const/4 v0, 0x0

    .line 1551
    .end local v0           #nextAlarm:Ljava/lang/String;
    :cond_12
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 12

    .prologue
    .line 295
    const/4 v5, 0x0

    .line 297
    .local v5, pwd:Ljava/lang/String;
    const/4 v6, 0x0

    .line 300
    .local v6, raf:Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v7, Ljava/io/RandomAccessFile;

    sget-object v9, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v10, "r"

    invoke-direct {v7, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_3a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_66

    .line 301
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .local v7, raf:Ljava/io/RandomAccessFile;
    :try_start_c
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v8, v9, [B

    .line 302
    .local v8, stored:[B
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_18} :catch_83
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_80
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_7d

    move-result v2

    .line 304
    .local v2, got:I
    if-gtz v2, :cond_28

    .line 305
    const/4 v9, 0x0

    .line 323
    if-eqz v7, :cond_21

    .line 324
    :try_start_1e
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_23

    :cond_21
    :goto_21
    move-object v6, v7

    .line 331
    .end local v2           #got:I
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .end local v8           #stored:[B
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :goto_22
    return-object v9

    .line 326
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #got:I
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #stored:[B
    :catch_23
    move-exception v3

    .line 327
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 308
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_28
    :try_start_28
    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2b} :catch_83
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_80
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_7d

    move-result-object v5

    .line 323
    if-eqz v7, :cond_31

    .line 324
    :try_start_2e
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_34

    :cond_31
    move-object v6, v7

    .end local v2           #got:I
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .end local v8           #stored:[B
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :cond_32
    :goto_32
    move-object v9, v5

    .line 331
    goto :goto_22

    .line 326
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #got:I
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #stored:[B
    :catch_34
    move-exception v3

    .line 327
    .restart local v3       #ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 329
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_32

    .line 309
    .end local v2           #got:I
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v8           #stored:[B
    :catch_3a
    move-exception v1

    .line 310
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    :goto_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_5f

    .line 323
    if-eqz v6, :cond_32

    .line 324
    :try_start_40
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_32

    .line 326
    :catch_44
    move-exception v3

    .line 327
    .restart local v3       #ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 311
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_49
    move-exception v3

    .line 314
    .restart local v3       #ioe:Ljava/io/IOException;
    :goto_4a
    if-eqz v6, :cond_4f

    :try_start_4c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5a

    .line 323
    :cond_4f
    :goto_4f
    if-eqz v6, :cond_32

    .line 324
    :try_start_51
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_32

    .line 326
    :catch_55
    move-exception v3

    .line 327
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 315
    :catch_5a
    move-exception v4

    .line 316
    .local v4, ioe2:Ljava/io/IOException;
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_4f

    .line 322
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #ioe2:Ljava/io/IOException;
    :catchall_5f
    move-exception v9

    .line 323
    :goto_60
    if-eqz v6, :cond_65

    .line 324
    :try_start_62
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_75

    .line 328
    :cond_65
    :goto_65
    throw v9

    .line 318
    :catch_66
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/Exception;
    :goto_67
    :try_start_67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_5f

    .line 323
    if-eqz v6, :cond_32

    .line 324
    :try_start_6c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_32

    .line 326
    :catch_70
    move-exception v3

    .line 327
    .restart local v3       #ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 326
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_75
    move-exception v3

    .line 327
    .restart local v3       #ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65

    .line 322
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catchall_7a
    move-exception v9

    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_60

    .line 318
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catch_7d
    move-exception v0

    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_67

    .line 311
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catch_80
    move-exception v3

    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4a

    .line 309
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catch_83
    move-exception v1

    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3b
.end method

.method public getPowerButtonInstantlyLocks()Z
    .registers 3

    .prologue
    .line 1774
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRecoveryPassword()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 875
    const/4 v7, 0x0

    .line 876
    .local v7, recoveryPassword:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "password"

    aput-object v3, v2, v9

    const-string/jumbo v3, "set_date IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 884
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 885
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_2a

    .line 886
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 887
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 889
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 890
    const/4 v6, 0x0

    .line 895
    :cond_2e
    if-nez v7, :cond_55

    .line 896
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v7

    .line 900
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords()V

    .line 903
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 904
    .local v8, values:Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string/jumbo v0, "set_date"

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 912
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_55
    return-object v7
.end method

.method public getRequestedMinimumPasswordLength()I
    .registers 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .registers 3

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .registers 3

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .registers 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .registers 3

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .registers 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .registers 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .registers 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .registers 3

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public invalidateRecoveryPassword()V
    .registers 1

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords()V

    .line 934
    return-void
.end method

.method public isBiometricWeakEverChosen()Z
    .registers 3

    .prologue
    .line 524
    const-string/jumbo v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1383
    const-string v4, "enable_facelock"

    const-string/jumbo v5, "lockscreen.options"

    invoke-direct {p0, v5}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1404
    :cond_11
    :goto_11
    return v2

    .line 1388
    :cond_12
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1390
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_18
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1e} :catch_33

    .line 1396
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1399
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_11

    move v2, v3

    .line 1404
    goto :goto_11

    .line 1391
    :catch_33
    move-exception v0

    .line 1392
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_11
.end method

.method public isDevicePasswordSimple()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1815
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "is_smpw_key"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method public isEmergencyCallCapable()Z
    .registers 3

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .registers 3

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .registers 16

    .prologue
    const-wide/32 v13, 0x40000

    const-wide/32 v11, 0x20000

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1331
    const-string/jumbo v8, "lockscreen.password_type"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1332
    .local v3, mode:J
    const-string/jumbo v8, "lockscreen.password_type_alternate"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1333
    .local v1, backupMode:J
    cmp-long v8, v3, v13

    if-eqz v8, :cond_2e

    cmp-long v8, v3, v11

    if-eqz v8, :cond_2e

    const-wide/32 v8, 0x50000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_2e

    const-wide/32 v8, 0x60000

    cmp-long v8, v3, v8

    if-nez v8, :cond_5d

    :cond_2e
    move v5, v7

    .line 1337
    .local v5, passwordEnabled:Z
    :goto_2f
    cmp-long v8, v1, v13

    if-eqz v8, :cond_45

    cmp-long v8, v1, v11

    if-eqz v8, :cond_45

    const-wide/32 v8, 0x50000

    cmp-long v8, v1, v8

    if-eqz v8, :cond_45

    const-wide/32 v8, 0x60000

    cmp-long v8, v1, v8

    if-nez v8, :cond_5f

    :cond_45
    move v0, v7

    .line 1342
    .local v0, backupEnabled:Z
    :goto_46
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_61

    if-nez v5, :cond_5c

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-nez v8, :cond_5a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v8

    if-eqz v8, :cond_61

    :cond_5a
    if-eqz v0, :cond_61

    :cond_5c
    :goto_5c
    return v7

    .end local v0           #backupEnabled:Z
    .end local v5           #passwordEnabled:Z
    :cond_5d
    move v5, v6

    .line 1333
    goto :goto_2f

    .restart local v5       #passwordEnabled:Z
    :cond_5f
    move v0, v6

    .line 1337
    goto :goto_46

    .restart local v0       #backupEnabled:Z
    :cond_61
    move v7, v6

    .line 1342
    goto :goto_5c
.end method

.method public isLockPatternEnabled()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 1361
    const-string/jumbo v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_34

    move v0, v1

    .line 1365
    .local v0, backupEnabled:Z
    :goto_11
    const-string/jumbo v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_36

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_36

    :cond_31
    if-eqz v0, :cond_36

    :cond_33
    :goto_33
    return v1

    .end local v0           #backupEnabled:Z
    :cond_34
    move v0, v2

    .line 1361
    goto :goto_11

    .restart local v0       #backupEnabled:Z
    :cond_36
    move v1, v2

    .line 1365
    goto :goto_33
.end method

.method public isLockScreenDisabled()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "lockscreen.disabled"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isLockSparePasswordEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1350
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    .line 1351
    .local v0, patternEnabled:Z
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_1e

    move v1, v2

    .line 1353
    .local v1, usingFaceLock:Z
    :goto_13
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedSparePasswordExists()Z

    move-result v4

    if-eqz v4, :cond_20

    if-eqz v0, :cond_20

    if-nez v1, :cond_20

    :goto_1d
    return v2

    .end local v1           #usingFaceLock:Z
    :cond_1e
    move v1, v3

    .line 1351
    goto :goto_13

    .restart local v1       #usingFaceLock:Z
    :cond_20
    move v2, v3

    .line 1353
    goto :goto_1d
.end method

.method public isPatternEverChosen()Z
    .registers 3

    .prologue
    .line 514
    const-string/jumbo v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPcwLockEnabled()Z
    .registers 4

    .prologue
    .line 1506
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "lock_pcw_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_15

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1509
    const/4 v1, 0x1

    .line 1511
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isPermanentlyLocked()Z
    .registers 3

    .prologue
    .line 1502
    const-string/jumbo v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .registers 3

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isRecoverLockEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1375
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "lock_Recovery_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method public isSecure()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1582
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    int-to-long v2, v6

    .line 1583
    .local v2, mode:J
    const-wide/32 v6, 0x10000

    cmp-long v6, v2, v6

    if-nez v6, :cond_49

    move v1, v4

    .line 1584
    .local v1, isPattern:Z
    :goto_f
    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4b

    :cond_2b
    move v0, v4

    .line 1588
    .local v0, isPassword:Z
    :goto_2c
    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v6

    if-nez v6, :cond_48

    :cond_3a
    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-nez v6, :cond_48

    :cond_42
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isPcwLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 1590
    .local v4, secure:Z
    :cond_48
    :goto_48
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_49
    move v1, v5

    .line 1583
    goto :goto_f

    .restart local v1       #isPattern:Z
    :cond_4b
    move v0, v5

    .line 1584
    goto :goto_2c

    .restart local v0       #isPassword:Z
    :cond_4d
    move v4, v5

    .line 1588
    goto :goto_48
.end method

.method public isSignatureEverChosen()Z
    .registers 3

    .prologue
    .line 534
    const-string/jumbo v0, "lockscreen.signatureeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSignatureLockInstalled()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 1412
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1414
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_7
    const-string v3, "com.sec.android.signaturelock"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_e

    .line 1419
    :goto_d
    return v2

    .line 1415
    :catch_e
    move-exception v0

    .line 1416
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public isSimLocked()Z
    .registers 2

    .prologue
    .line 1607
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 3

    .prologue
    .line 1461
    const-string/jumbo v0, "lock_pattern_tactile_feedback_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .registers 3

    .prologue
    .line 1440
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisibleSignatureEnabled()Z
    .registers 3

    .prologue
    .line 1433
    const-string/jumbo v0, "lock_signature_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .registers 16
    .parameter "password"

    .prologue
    .line 1282
    if-nez p1, :cond_4

    .line 1283
    const/4 v3, 0x0

    .line 1314
    :goto_3
    return-object v3

    .line 1285
    :cond_4
    const/4 v0, 0x0

    .line 1286
    .local v0, algo:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1298
    .local v3, hashed:[B
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1299
    .local v8, saltedPassword:[B
    const/4 v9, 0x0

    .line 1300
    .local v9, sha:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 1301
    .local v5, md:Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1302
    .local v6, s:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2b
    const/16 v10, 0x400

    if-ge v4, v10, :cond_58

    .line 1303
    if-eqz v9, :cond_34

    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 1304
    :cond_34
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 1305
    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 1306
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 1302
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 1308
    :cond_58
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1310
    .local v1, e:J
    const-string v10, "LockPatternUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "passwordToHash time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v1, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_86} :catch_88

    goto/16 :goto_3

    .line 1311
    .end local v1           #e:J
    .end local v4           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v6           #s:J
    .end local v8           #saltedPassword:[B
    .end local v9           #sha:[B
    :catch_88
    move-exception v1

    .line 1312
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v10, "LockPatternUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public passwordToHashOriginal(Ljava/lang/String;)[B
    .registers 11
    .parameter "password"

    .prologue
    .line 1263
    if-nez p1, :cond_4

    .line 1264
    const/4 v2, 0x0

    .line 1276
    :goto_3
    return-object v2

    .line 1266
    :cond_4
    const/4 v0, 0x0

    .line 1267
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1269
    .local v2, hashed:[B
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1270
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1271
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1272
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_4f} :catch_51

    move-result-object v2

    goto :goto_3

    .line 1273
    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :catch_51
    move-exception v1

    .line 1274
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public removeRecoveryPasswords()V
    .registers 5

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "set_date IS NULL"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 926
    return-void
.end method

.method public reportFailedPasswordAttempt()V
    .registers 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    .line 342
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    .line 346
    return-void
.end method

.method public resumeCall()Z
    .registers 3

    .prologue
    .line 1747
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1749
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    :try_start_d
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_15

    move-result v1

    if-eqz v1, :cond_16

    .line 1750
    const/4 v1, 0x1

    .line 1755
    :goto_14
    return v1

    .line 1752
    :catch_15
    move-exception v1

    .line 1755
    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .registers 4
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 954
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 955
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .registers 5
    .parameter "password"
    .parameter "quality"
    .parameter "isFallback"

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZ)V

    .line 959
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZZ)V
    .registers 36
    .parameter "password"
    .parameter "quality"
    .parameter "isFallback"
    .parameter "isSignature"

    .prologue
    .line 972
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 973
    new-instance v22, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 974
    .local v22, dem:Landroid/dirEncryption/DirEncryptionManager;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 979
    .end local v22           #dem:Landroid/dirEncryption/DirEncryptionManager;
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v24

    .line 982
    .local v24, hash:[B
    :try_start_1c
    new-instance v30, Ljava/io/RandomAccessFile;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v4, "rw"

    move-object/from16 v0, v30

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .local v30, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_8f

    .line 985
    const-wide/16 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 994
    :goto_31
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    .line 995
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 996
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v27

    .line 997
    .local v27, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_201

    .line 999
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 1002
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 1004
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v21

    .line 1005
    .local v21, computedQuality:I
    if-nez p3, :cond_157

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 1007
    const-string/jumbo v3, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1008
    if-eqz v21, :cond_146

    .line 1009
    const/4 v5, 0x0

    .line 1010
    .local v5, letters:I
    const/4 v6, 0x0

    .line 1011
    .local v6, uppercase:I
    const/4 v7, 0x0

    .line 1012
    .local v7, lowercase:I
    const/4 v8, 0x0

    .line 1013
    .local v8, numbers:I
    const/4 v9, 0x0

    .line 1014
    .local v9, symbols:I
    const/4 v10, 0x0

    .line 1015
    .local v10, nonletter:I
    const/16 v25, 0x0

    .local v25, i:I
    :goto_6c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_f8

    .line 1016
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 1017
    .local v20, c:C
    const/16 v3, 0x41

    move/from16 v0, v20

    if-lt v0, v3, :cond_d1

    const/16 v3, 0x5a

    move/from16 v0, v20

    if-gt v0, v3, :cond_d1

    .line 1018
    add-int/lit8 v5, v5, 0x1

    .line 1019
    add-int/lit8 v6, v6, 0x1

    .line 1015
    :goto_8c
    add-int/lit8 v25, v25, 0x1

    goto :goto_6c

    .line 988
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #letters:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #numbers:I
    .end local v9           #symbols:I
    .end local v10           #nonletter:I
    .end local v20           #c:C
    .end local v21           #computedQuality:I
    .end local v25           #i:I
    .end local v27           #keyStore:Landroid/security/KeyStore;
    :cond_8f
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    sget v11, Lcom/android/internal/widget/LockPatternUtils;->ORIGINAL_PASSWORD_HASH_SIZE:I

    int-to-long v11, v11

    cmp-long v3, v3, v11

    if-nez v3, :cond_a8

    .line 989
    const-wide/16 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 990
    const-wide/16 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 992
    :cond_a8
    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_b3
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_b3} :catch_b5
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_b3} :catch_12a

    goto/16 :goto_31

    .line 1086
    .end local v30           #raf:Ljava/io/RandomAccessFile;
    :catch_b5
    move-exception v23

    .line 1088
    .local v23, fnfe:Ljava/io/FileNotFoundException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to save lock pattern to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v11, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    .end local v23           #fnfe:Ljava/io/FileNotFoundException;
    :goto_d0
    return-void

    .line 1020
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #letters:I
    .restart local v6       #uppercase:I
    .restart local v7       #lowercase:I
    .restart local v8       #numbers:I
    .restart local v9       #symbols:I
    .restart local v10       #nonletter:I
    .restart local v20       #c:C
    .restart local v21       #computedQuality:I
    .restart local v25       #i:I
    .restart local v27       #keyStore:Landroid/security/KeyStore;
    .restart local v30       #raf:Ljava/io/RandomAccessFile;
    :cond_d1
    const/16 v3, 0x61

    move/from16 v0, v20

    if-lt v0, v3, :cond_e2

    const/16 v3, 0x7a

    move/from16 v0, v20

    if-gt v0, v3, :cond_e2

    .line 1021
    add-int/lit8 v5, v5, 0x1

    .line 1022
    add-int/lit8 v7, v7, 0x1

    goto :goto_8c

    .line 1023
    :cond_e2
    const/16 v3, 0x30

    move/from16 v0, v20

    if-lt v0, v3, :cond_f3

    const/16 v3, 0x39

    move/from16 v0, v20

    if-gt v0, v3, :cond_f3

    .line 1024
    add-int/lit8 v8, v8, 0x1

    .line 1025
    add-int/lit8 v10, v10, 0x1

    goto :goto_8c

    .line 1027
    :cond_f3
    add-int/lit8 v9, v9, 0x1

    .line 1028
    add-int/lit8 v10, v10, 0x1

    goto :goto_8c

    .line 1031
    .end local v20           #c:C
    :cond_f8
    :try_start_f8
    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 1061
    .end local v5           #letters:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #numbers:I
    .end local v9           #symbols:I
    .end local v10           #nonletter:I
    .end local v25           #i:I
    :goto_107
    const-string/jumbo v3, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1062
    .local v28, passwordHistory:Ljava/lang/String;
    if-nez v28, :cond_117

    .line 1063
    new-instance v28, Ljava/lang/String;

    .end local v28           #passwordHistory:Ljava/lang/String;
    invoke-direct/range {v28 .. v28}, Ljava/lang/String;-><init>()V

    .line 1065
    .restart local v28       #passwordHistory:Ljava/lang/String;
    :cond_117
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v29

    .line 1066
    .local v29, passwordHistoryLength:I
    if-nez v29, :cond_1c7

    .line 1067
    const-string v28, ""

    .line 1076
    :goto_11f
    const-string/jumbo v3, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/io/FileNotFoundException; {:try_start_f8 .. :try_end_129} :catch_b5
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_129} :catch_12a

    goto :goto_d0

    .line 1089
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v21           #computedQuality:I
    .end local v27           #keyStore:Landroid/security/KeyStore;
    .end local v28           #passwordHistory:Ljava/lang/String;
    .end local v29           #passwordHistoryLength:I
    .end local v30           #raf:Ljava/io/RandomAccessFile;
    :catch_12a
    move-exception v26

    .line 1091
    .local v26, ioe:Ljava/io/IOException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to save lock pattern to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v11, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 1036
    .end local v26           #ioe:Ljava/io/IOException;
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v21       #computedQuality:I
    .restart local v27       #keyStore:Landroid/security/KeyStore;
    .restart local v30       #raf:Ljava/io/RandomAccessFile;
    :cond_146
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    :try_start_153
    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    goto :goto_107

    .line 1042
    :cond_157
    if-eqz p4, :cond_194

    .line 1043
    const-string v3, "LockPatternUtils"

    const-string/jumbo v4, "saving real lock password here, type is signature"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string/jumbo v3, "lockscreen.password_type"

    const-wide/32 v11, 0x9000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1046
    const-string/jumbo v3, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1047
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishSignature()V

    .line 1048
    const v12, 0x9000

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    goto/16 :goto_107

    .line 1051
    :cond_194
    const-string/jumbo v3, "lockscreen.password_type"

    const-wide/32 v11, 0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1052
    const-string/jumbo v3, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 1054
    const v12, 0x8000

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    goto/16 :goto_107

    .line 1069
    .restart local v28       #passwordHistory:Ljava/lang/String;
    .restart local v29       #passwordHistoryLength:I
    :cond_1c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1072
    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    mul-int v4, v4, v29

    add-int v4, v4, v29

    add-int/lit8 v4, v4, -0x1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_11f

    .line 1080
    .end local v21           #computedQuality:I
    .end local v28           #passwordHistory:Ljava/lang/String;
    .end local v29           #passwordHistoryLength:I
    :cond_201
    invoke-virtual/range {v27 .. v27}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20a

    .line 1081
    invoke-virtual/range {v27 .. v27}, Landroid/security/KeyStore;->reset()Z

    .line 1083
    :cond_20a
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_21a
    .catch Ljava/io/FileNotFoundException; {:try_start_153 .. :try_end_21a} :catch_b5
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_21a} :catch_12a

    goto/16 :goto_d0
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 684
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Z)V
    .registers 4
    .parameter
    .parameter "isFallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZZ)V

    .line 693
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZZ)V
    .registers 19
    .parameter
    .parameter "isFallback"
    .parameter "isSignature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LockPatternUtils.saveLockPattern() isFallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSignature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v11

    .line 707
    .local v11, hash:[B
    :try_start_2a
    new-instance v14, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v3, "rw"

    invoke-direct {v14, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .local v14, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_74

    .line 710
    const-wide/16 v2, 0x0

    invoke-virtual {v14, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 714
    :goto_3b
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 716
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v13

    .line 717
    .local v13, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_103

    .line 718
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 719
    const-string/jumbo v2, "lockscreen.patterneverchosen"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 720
    if-nez p2, :cond_96

    .line 721
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 722
    const-string/jumbo v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 723
    const/high16 v2, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 759
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v13           #keyStore:Landroid/security/KeyStore;
    .end local v14           #raf:Ljava/io/RandomAccessFile;
    :goto_73
    return-void

    .line 712
    .restart local v14       #raf:Ljava/io/RandomAccessFile;
    :cond_74
    const/4 v2, 0x0

    array-length v3, v11

    invoke-virtual {v14, v11, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_79
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_79} :catch_7a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_79} :catch_c3

    goto :goto_3b

    .line 751
    .end local v14           #raf:Ljava/io/RandomAccessFile;
    :catch_7a
    move-exception v10

    .line 754
    .local v10, fnfe:Ljava/io/FileNotFoundException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pattern to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 726
    .end local v10           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v13       #keyStore:Landroid/security/KeyStore;
    .restart local v14       #raf:Ljava/io/RandomAccessFile;
    :cond_96
    if-eqz p3, :cond_df

    .line 727
    :try_start_98
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "saving real lock pattern here, type is signature"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string/jumbo v2, "lockscreen.password_type"

    const-wide/32 v3, 0x9000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 730
    const-string/jumbo v2, "lockscreen.password_type_alternate"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 732
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishSignature()V

    .line 733
    const v2, 0x9000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_c2} :catch_7a
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_c2} :catch_c3

    goto :goto_73

    .line 755
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v13           #keyStore:Landroid/security/KeyStore;
    .end local v14           #raf:Ljava/io/RandomAccessFile;
    :catch_c3
    move-exception v12

    .line 757
    .local v12, ioe:Ljava/io/IOException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pattern to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 736
    .end local v12           #ioe:Ljava/io/IOException;
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v13       #keyStore:Landroid/security/KeyStore;
    .restart local v14       #raf:Ljava/io/RandomAccessFile;
    :cond_df
    :try_start_df
    const-string/jumbo v2, "lockscreen.password_type"

    const-wide/32 v3, 0x8000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 737
    const-string/jumbo v2, "lockscreen.password_type_alternate"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 739
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 740
    const v2, 0x8000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    goto/16 :goto_73

    .line 745
    :cond_103
    invoke-virtual {v13}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 746
    invoke-virtual {v13}, Landroid/security/KeyStore;->reset()Z

    .line 748
    :cond_10c
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_117
    .catch Ljava/io/FileNotFoundException; {:try_start_df .. :try_end_117} :catch_7a
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_117} :catch_c3

    goto/16 :goto_73
.end method

.method public saveLockSignatureCoornidates([B)V
    .registers 9
    .parameter "nCoordinate"

    .prologue
    .line 844
    const/4 v2, 0x0

    .line 847
    .local v2, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockSignatureFilename:Ljava/lang/String;

    const-string/jumbo v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_70
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_4a

    .line 848
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .local v3, raf:Ljava/io/RandomAccessFile;
    const/4 v4, 0x0

    :try_start_c
    array-length v5, p1

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 849
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_17} :catch_82
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_7f

    .line 856
    if-eqz v3, :cond_1c

    .line 857
    :try_start_19
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1e

    :cond_1c
    move-object v2, v3

    .line 863
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    :cond_1d
    :goto_1d
    return-void

    .line 859
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_1e
    move-exception v1

    .line 860
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 862
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1d

    .line 850
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_24
    move-exception v0

    .line 851
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    :goto_25
    :try_start_25
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find file to save: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_70

    .line 856
    if-eqz v2, :cond_1d

    .line 857
    :try_start_41
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_1d

    .line 859
    :catch_45
    move-exception v1

    .line 860
    .restart local v1       #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 852
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_4a
    move-exception v1

    .line 853
    .restart local v1       #ioe:Ljava/io/IOException;
    :goto_4b
    :try_start_4b
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save signature to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_70

    .line 856
    if-eqz v2, :cond_1d

    .line 857
    :try_start_67
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_1d

    .line 859
    :catch_6b
    move-exception v1

    .line 860
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 855
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_70
    move-exception v4

    .line 856
    :goto_71
    if-eqz v2, :cond_76

    .line 857
    :try_start_73
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    .line 861
    :cond_76
    :goto_76
    throw v4

    .line 859
    :catch_77
    move-exception v1

    .line 860
    .restart local v1       #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_76

    .line 855
    .end local v1           #ioe:Ljava/io/IOException;
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catchall_7c
    move-exception v4

    move-object v2, v3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_71

    .line 852
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_7f
    move-exception v1

    move-object v2, v3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4b

    .line 850
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_82
    move-exception v0

    move-object v2, v3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_25
.end method

.method public saveLockSpare(Ljava/lang/String;I)V
    .registers 12
    .parameter "spare"
    .parameter "quality"

    .prologue
    .line 1098
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1100
    .local v2, hash:[B
    const/4 v4, 0x0

    .line 1103
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockSparePasswordFilename:Ljava/lang/String;

    const-string/jumbo v7, "rw"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_db
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_d9

    .line 1105
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .local v5, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_50

    .line 1106
    const-wide/16 v6, 0x0

    :try_start_13
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1110
    :goto_16
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1112
    const-string/jumbo v6, "lockscreen.patterneverchosen"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1113
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 1114
    .local v0, a:I
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PasswordQuality =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/high16 v6, 0x1

    if-ne v0, v6, :cond_7a

    .line 1117
    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/32 v7, 0x10000

    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_49} :catch_56
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_49} :catch_88

    .line 1132
    :cond_49
    :goto_49
    if-eqz v5, :cond_de

    .line 1134
    :try_start_4b
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_d1

    move-object v4, v5

    .line 1139
    .end local v0           #a:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_4f
    :goto_4f
    return-void

    .line 1108
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :cond_50
    const/4 v6, 0x0

    :try_start_51
    array-length v7, v2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_55} :catch_88

    goto :goto_16

    .line 1125
    :catch_56
    move-exception v1

    move-object v4, v5

    .line 1127
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :goto_58
    :try_start_58
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save lock pattern to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockSparePasswordFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_d7

    .line 1132
    if-eqz v4, :cond_4f

    .line 1134
    :try_start_74
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_4f

    .line 1135
    :catch_78
    move-exception v6

    goto :goto_4f

    .line 1118
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #a:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :cond_7a
    const/high16 v6, 0x4

    if-ne v0, v6, :cond_ac

    .line 1119
    :try_start_7e
    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/32 v7, 0x40000

    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_7e .. :try_end_87} :catch_56
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_87} :catch_88

    goto :goto_49

    .line 1128
    .end local v0           #a:I
    :catch_88
    move-exception v3

    move-object v4, v5

    .line 1130
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .local v3, ioe:Ljava/io/IOException;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :goto_8a
    :try_start_8a
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save lock pattern to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockSparePasswordFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_8a .. :try_end_a4} :catchall_d7

    .line 1132
    if-eqz v4, :cond_4f

    .line 1134
    :try_start_a6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_4f

    .line 1135
    :catch_aa
    move-exception v6

    goto :goto_4f

    .line 1120
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #a:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :cond_ac
    const/high16 v6, 0x5

    if-ne v0, v6, :cond_c2

    .line 1121
    :try_start_b0
    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/32 v7, 0x50000

    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    :try_end_b9
    .catchall {:try_start_b0 .. :try_end_b9} :catchall_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_b0 .. :try_end_b9} :catch_56
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b9} :catch_88

    goto :goto_49

    .line 1132
    .end local v0           #a:I
    :catchall_ba
    move-exception v6

    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :goto_bc
    if-eqz v4, :cond_c1

    .line 1134
    :try_start_be
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_d5

    .line 1136
    :cond_c1
    :goto_c1
    throw v6

    .line 1122
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #a:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :cond_c2
    const/high16 v6, 0x2

    if-ne v0, v6, :cond_49

    .line 1123
    :try_start_c6
    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/32 v7, 0x20000

    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    :try_end_cf
    .catchall {:try_start_c6 .. :try_end_cf} :catchall_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_c6 .. :try_end_cf} :catch_56
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_cf} :catch_88

    goto/16 :goto_49

    .line 1135
    :catch_d1
    move-exception v6

    move-object v4, v5

    .line 1136
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_4f

    .line 1135
    .end local v0           #a:I
    :catch_d5
    move-exception v7

    goto :goto_c1

    .line 1132
    :catchall_d7
    move-exception v6

    goto :goto_bc

    .line 1128
    :catch_d9
    move-exception v3

    goto :goto_8a

    .line 1125
    :catch_db
    move-exception v1

    goto/16 :goto_58

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #a:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :cond_de
    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_4f
.end method

.method public savedPasswordExists()Z
    .registers 2

    .prologue
    .line 481
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedPatternExists()Z
    .registers 2

    .prologue
    .line 473
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedRecoveryPasswordExists()Z
    .registers 2

    .prologue
    .line 496
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedSignaturesExists()Z
    .registers 2

    .prologue
    .line 488
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroSignatureFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedSparePasswordExists()Z
    .registers 2

    .prologue
    .line 505
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroSparePasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1426
    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1427
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .registers 5
    .parameter "disable"

    .prologue
    .line 622
    const-string/jumbo v2, "lockscreen.disabled"

    if-eqz p1, :cond_b

    const-wide/16 v0, 0x1

    :goto_7
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 623
    return-void

    .line 622
    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_7
.end method

.method public setLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 1477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1478
    .local v0, deadline:J
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1479
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .parameter "locked"

    .prologue
    .line 1523
    const-string/jumbo v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1524
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1770
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1771
    return-void
.end method

.method public setSimLockedComplete()V
    .registers 2

    .prologue
    .line 1611
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    .line 1612
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1468
    const-string/jumbo v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1469
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1447
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1448
    return-void
.end method

.method public setVisibleSignatureEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1454
    const-string/jumbo v0, "lock_signature_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1455
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .registers 12
    .parameter "button"

    .prologue
    const/4 v7, 0x0

    .line 1667
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    .line 1671
    .local v3, newState:I
    const/4 v2, 0x0

    .line 1674
    .local v2, isVoIPState:Z
    :try_start_a
    const-string/jumbo v8, "voip"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v6

    .line 1675
    .local v6, voipinterface:Landroid/os/IVoIPInterface;
    if-eqz v6, :cond_3f

    .line 1676
    const-string v8, "LockPatternUtils"

    const-string v9, "get ITelephony interface"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-interface {v6}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v8

    if-nez v8, :cond_2a

    invoke-interface {v6}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_27} :catch_47

    move-result v8

    if-eqz v8, :cond_3d

    :cond_2a
    const/4 v2, 0x1

    .line 1686
    .end local v6           #voipinterface:Landroid/os/IVoIPInterface;
    :goto_2b
    const/4 v8, 0x2

    if-eq v3, v8, :cond_30

    if-eqz v2, :cond_50

    .line 1688
    :cond_30
    const v5, 0x10403aa

    .line 1689
    .local v5, textId:I
    const v4, 0x1080084

    .line 1690
    .local v4, phoneCallIcon:I
    invoke-virtual {p1, v4, v7, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1696
    .end local v4           #phoneCallIcon:I
    :goto_39
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 1697
    return-void

    .end local v5           #textId:I
    .restart local v6       #voipinterface:Landroid/os/IVoIPInterface;
    :cond_3d
    move v2, v7

    .line 1677
    goto :goto_2b

    .line 1679
    :cond_3f
    :try_start_3f
    const-string v8, "LockPatternUtils"

    const-string v9, "failed to get ITelephony interface"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_46} :catch_47

    goto :goto_2b

    .line 1681
    .end local v6           #voipinterface:Landroid/os/IVoIPInterface;
    :catch_47
    move-exception v1

    .line 1682
    .local v1, ex:Landroid/os/RemoteException;
    const-string v8, "LockPatternUtils"

    const-string v9, "RemoteException from getPhoneInterface()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 1692
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_50
    const v5, 0x10403a9

    .line 1693
    .restart local v5       #textId:I
    const v0, 0x10802d6

    .line 1694
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v7, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_39
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V
    .registers 13
    .parameter "button"
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    const/4 v6, 0x0

    .line 1630
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v7

    if-eqz v7, :cond_40

    if-eqz p3, :cond_40

    .line 1631
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1637
    const/4 v2, 0x0

    .line 1640
    .local v2, isVoIPState:Z
    :try_start_d
    const-string/jumbo v7, "voip"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v5

    .line 1641
    .local v5, voipinterface:Landroid/os/IVoIPInterface;
    if-eqz v5, :cond_48

    .line 1642
    const-string v7, "LockPatternUtils"

    const-string v8, "get ITelephony interface"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    invoke-interface {v5}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v7

    if-nez v7, :cond_2d

    invoke-interface {v5}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2a} :catch_50

    move-result v7

    if-eqz v7, :cond_46

    :cond_2d
    const/4 v2, 0x1

    .line 1652
    .end local v5           #voipinterface:Landroid/os/IVoIPInterface;
    :goto_2e
    const/4 v7, 0x2

    if-eq p2, v7, :cond_33

    if-eqz v2, :cond_59

    .line 1654
    :cond_33
    const v4, 0x10403aa

    .line 1655
    .local v4, textId:I
    const v3, 0x1080084

    .line 1656
    .local v3, phoneCallIcon:I
    invoke-virtual {p1, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1662
    .end local v3           #phoneCallIcon:I
    :goto_3c
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 1663
    .end local v2           #isVoIPState:Z
    .end local v4           #textId:I
    :goto_3f
    return-void

    .line 1633
    :cond_40
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3f

    .restart local v2       #isVoIPState:Z
    .restart local v5       #voipinterface:Landroid/os/IVoIPInterface;
    :cond_46
    move v2, v6

    .line 1643
    goto :goto_2e

    .line 1645
    :cond_48
    :try_start_48
    const-string v7, "LockPatternUtils"

    const-string v8, "failed to get ITelephony interface"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4f} :catch_50

    goto :goto_2e

    .line 1647
    .end local v5           #voipinterface:Landroid/os/IVoIPInterface;
    :catch_50
    move-exception v1

    .line 1648
    .local v1, ex:Landroid/os/RemoteException;
    const-string v7, "LockPatternUtils"

    const-string v8, "RemoteException from getPhoneInterface()"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 1658
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_59
    const v4, 0x10403a9

    .line 1659
    .restart local v4       #textId:I
    const v0, 0x10802d6

    .line 1660
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3c
.end method

.method public updateICELayoutState(Landroid/widget/RelativeLayout;Landroid/widget/Button;IZ)V
    .registers 14
    .parameter "mEmergencyCircle"
    .parameter "button"
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 1702
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v6

    if-eqz v6, :cond_4b

    if-eqz p4, :cond_4b

    .line 1703
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1704
    invoke-virtual {p2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1711
    const/4 v1, 0x0

    .line 1714
    .local v1, isVoIPState:Z
    :try_start_12
    const-string/jumbo v6, "voip"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v4

    .line 1715
    .local v4, voipinterface:Landroid/os/IVoIPInterface;
    if-eqz v4, :cond_54

    .line 1716
    const-string v6, "LockPatternUtils"

    const-string v7, "get ITelephony interface"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-interface {v4}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v6

    if-nez v6, :cond_32

    invoke-interface {v4}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2f} :catch_5c

    move-result v6

    if-eqz v6, :cond_52

    :cond_32
    const/4 v1, 0x1

    .line 1726
    .end local v4           #voipinterface:Landroid/os/IVoIPInterface;
    :goto_33
    const/4 v6, 0x2

    if-eq p3, v6, :cond_38

    if-eqz v1, :cond_65

    .line 1728
    :cond_38
    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1729
    const v3, 0x10403aa

    .line 1730
    .local v3, textId:I
    const v2, 0x1080084

    .line 1731
    .local v2, phoneCallIcon:I
    invoke-virtual {p2, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1732
    invoke-virtual {p2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1733
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1738
    .end local v1           #isVoIPState:Z
    .end local v2           #phoneCallIcon:I
    .end local v3           #textId:I
    :goto_4a
    return-void

    .line 1706
    :cond_4b
    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1707
    invoke-virtual {p2, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4a

    .restart local v1       #isVoIPState:Z
    .restart local v4       #voipinterface:Landroid/os/IVoIPInterface;
    :cond_52
    move v1, v5

    .line 1717
    goto :goto_33

    .line 1719
    :cond_54
    :try_start_54
    const-string v6, "LockPatternUtils"

    const-string v7, "failed to get ITelephony interface"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5b} :catch_5c

    goto :goto_33

    .line 1721
    .end local v4           #voipinterface:Landroid/os/IVoIPInterface;
    :catch_5c
    move-exception v0

    .line 1722
    .local v0, ex:Landroid/os/RemoteException;
    const-string v6, "LockPatternUtils"

    const-string v7, "RemoteException from getPhoneInterface()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 1735
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_65
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1736
    invoke-virtual {p2, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4a
.end method

.method public usingBiometricWeak()Z
    .registers 5

    .prologue
    .line 1164
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1166
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public usingSignatureUnlock()Z
    .registers 5

    .prologue
    .line 1173
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1175
    .local v0, quality:I
    const v1, 0x9000

    if-ne v0, v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
