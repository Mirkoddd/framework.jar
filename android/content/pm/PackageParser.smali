.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo; = null

.field public static final PARSE_CHATTY:I = 0x2

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_ON_SDCARD:I = 0x20

.field private static final RIGID_PARSER:Z = false

.field private static final SDK_CODENAME:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final SDK_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field static final mIsEngBuild:Z

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static sCompatibilityModeEnabled:Z


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;

.field private mOnlyCoreApps:Z

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, v2, v5, v3}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, v2, v5, v3}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 108
    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    :goto_33
    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    .line 116
    sput-boolean v4, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    return-void

    .line 108
    :cond_3f
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    goto :goto_33
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "archiveSourcePath"

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 190
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 191
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 67
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "pkg"
    .parameter "clsSeq"
    .parameter "outError"

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x2e

    const/4 v6, 0x0

    .line 1311
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_22

    .line 1312
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty class name in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v6

    .line 1330
    :goto_21
    return-object v3

    .line 1315
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1316
    .local v2, cls:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1317
    .local v1, c:C
    if-ne v1, v5, :cond_42

    .line 1318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 1320
    :cond_42
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_5c

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 1326
    .end local v0           #b:Ljava/lang/StringBuilder;
    :cond_5c
    const/16 v4, 0x61

    if-lt v1, v4, :cond_69

    const/16 v4, 0x7a

    if-gt v1, v4, :cond_69

    .line 1327
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 1329
    :cond_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad class name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v6

    goto :goto_21
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "pkg"
    .parameter "procSeq"
    .parameter "type"
    .parameter "outError"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1335
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1336
    .local v2, proc:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1337
    .local v0, c:C
    if-eqz p0, :cond_9c

    const/16 v5, 0x3a

    if-ne v0, v5, :cond_9c

    .line 1338
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_48

    .line 1339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": must be at least two characters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v7

    .line 1358
    :goto_47
    return-object v4

    .line 1343
    :cond_48
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1344
    .local v3, subName:Ljava/lang/String;
    invoke-static {v3, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1345
    .local v1, nameError:Ljava/lang/String;
    if-eqz v1, :cond_86

    .line 1346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v7

    goto :goto_47

    .line 1350
    :cond_86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_47

    .line 1352
    .end local v1           #nameError:Ljava/lang/String;
    .end local v3           #subName:Ljava/lang/String;
    :cond_9c
    invoke-static {v2, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1353
    .restart local v1       #nameError:Ljava/lang/String;
    if-eqz v1, :cond_e0

    const-string/jumbo v5, "system"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    .line 1354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v7

    goto/16 :goto_47

    .line 1358
    :cond_e0
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_47
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "pkg"
    .parameter "defProc"
    .parameter "procSeq"
    .parameter "flags"
    .parameter "separateProcesses"
    .parameter "outError"

    .prologue
    .line 1364
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_12

    const-string/jumbo v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1365
    if-eqz p1, :cond_10

    .line 1378
    .end local p1
    :cond_f
    :goto_f
    return-object p1

    .restart local p1
    :cond_10
    move-object p1, p0

    .line 1365
    goto :goto_f

    .line 1367
    :cond_12
    if-eqz p4, :cond_32

    .line 1368
    array-length v2, p4

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_17
    if-ltz v0, :cond_32

    .line 1369
    aget-object v1, p4, v0

    .line 1370
    .local v1, sp:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2d
    move-object p1, p0

    .line 1371
    goto :goto_f

    .line 1368
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 1375
    .end local v0           #i:I
    .end local v1           #sp:Ljava/lang/String;
    :cond_32
    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 1378
    const-string/jumbo v2, "process"

    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "pkg"
    .parameter "defProc"
    .parameter "procSeq"
    .parameter "outError"

    .prologue
    .line 1383
    if-nez p2, :cond_3

    .line 1389
    .end local p1
    :goto_2
    return-object p1

    .line 1386
    .restart local p1
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 1387
    const/4 p1, 0x0

    goto :goto_2

    .line 1389
    :cond_b
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z
    .registers 7
    .parameter "flags"
    .parameter "p"
    .parameter "metaData"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3366
    iget v3, p1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    if-eqz v3, :cond_14

    .line 3367
    iget v3, p1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    if-ne v3, v1, :cond_12

    move v0, v1

    .line 3368
    .local v0, enabled:Z
    :goto_b
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v3, v0, :cond_14

    .line 3380
    .end local v0           #enabled:Z
    :cond_11
    :goto_11
    return v1

    :cond_12
    move v0, v2

    .line 3367
    goto :goto_b

    .line 3372
    :cond_14
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_1e

    if-nez p2, :cond_11

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v3, :cond_11

    .line 3376
    :cond_1e
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_26

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-nez v3, :cond_11

    :cond_26
    move v1, v2

    .line 3380
    goto :goto_11
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .parameter "a"
    .parameter "flags"

    .prologue
    .line 3470
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 3478
    :goto_3
    return-object v0

    .line 3471
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3472
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_3

    .line 3475
    :cond_11
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 3476
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 3477
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_3
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;
    .registers 8
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x20

    const/4 v4, 0x1

    const v3, -0x200001

    .line 3384
    if-nez p0, :cond_a

    .line 3422
    :goto_9
    return-object v0

    .line 3385
    :cond_a
    invoke-static {p1, p0, v0}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 3388
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_19

    .line 3389
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 3391
    :cond_19
    iget-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->mSetStopped:Z

    if-eqz v1, :cond_27

    .line 3392
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v2, v5

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3396
    :goto_24
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_9

    .line 3394
    :cond_27
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_24

    .line 3400
    :cond_2f
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 3401
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_3e

    .line 3402
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 3404
    :cond_3e
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_46

    .line 3405
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3407
    :cond_46
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_4d

    .line 3408
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 3410
    :cond_4d
    iget-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->mSetStopped:Z

    if-eqz v1, :cond_63

    .line 3411
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v2, v5

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3415
    :goto_58
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    if-ne v1, v4, :cond_6b

    .line 3416
    iput-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 3421
    :cond_5e
    :goto_5e
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    goto :goto_9

    .line 3413
    :cond_63
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_58

    .line 3417
    :cond_6b
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_75

    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5e

    .line 3419
    :cond_75
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_5e
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .registers 4
    .parameter "i"
    .parameter "flags"

    .prologue
    .line 3583
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 3589
    :goto_3
    return-object v0

    .line 3584
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 3585
    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    goto :goto_3

    .line 3587
    :cond_b
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 3588
    .local v0, ii:Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    goto :goto_3
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJ)Landroid/content/pm/PackageInfo;
    .registers 22
    .parameter "p"
    .parameter "gids"
    .parameter "flags"
    .parameter "firstInstallTime"
    .parameter "lastUpdateTime"

    .prologue
    .line 214
    new-instance v8, Landroid/content/pm/PackageInfo;

    invoke-direct {v8}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 215
    .local v8, pi:Landroid/content/pm/PackageInfo;
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 216
    iget v11, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v11, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 217
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 218
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 219
    iget v11, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v11, v8, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 220
    move/from16 v0, p2

    invoke-static {p0, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 221
    iget v11, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v11, v8, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 222
    move-wide/from16 v0, p3

    iput-wide v0, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 223
    move-wide/from16 v0, p5

    iput-wide v0, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 224
    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_37

    .line 225
    move-object/from16 v0, p1

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->gids:[I

    .line 227
    :cond_37
    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x4000

    if-eqz v11, :cond_67

    .line 228
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 229
    .local v2, N:I
    if-lez v2, :cond_50

    .line 230
    new-array v11, v2, [Landroid/content/pm/ConfigurationInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 231
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 233
    :cond_50
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v11, :cond_ae

    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 234
    :goto_5a
    if-lez v2, :cond_67

    .line 235
    new-array v11, v2, [Landroid/content/pm/FeatureInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 236
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 239
    .end local v2           #N:I
    :cond_67
    and-int/lit8 v11, p2, 0x1

    if-eqz v11, :cond_cc

    .line 240
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 241
    .restart local v2       #N:I
    if-lez v2, :cond_cc

    .line 242
    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_b0

    .line 243
    new-array v11, v2, [Landroid/content/pm/ActivityInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 251
    :goto_7d
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_80
    if-ge v4, v2, :cond_cc

    .line 252
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 253
    .local v3, activity:Landroid/content/pm/PackageParser$Activity;
    iget-object v11, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez v11, :cond_96

    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_28b

    .line 255
    :cond_96
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Activity;

    move/from16 v0, p2

    invoke-static {v11, v0}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    aput-object v11, v12, v6

    .line 251
    :goto_aa
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5           #j:I
    .restart local v6       #j:I
    goto :goto_80

    .line 233
    .end local v3           #activity:Landroid/content/pm/PackageParser$Activity;
    .end local v4           #i:I
    .end local v6           #j:I
    :cond_ae
    const/4 v2, 0x0

    goto :goto_5a

    .line 245
    :cond_b0
    const/4 v7, 0x0

    .line 246
    .local v7, num:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_b2
    if-ge v4, v2, :cond_c7

    .line 247
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Activity;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v11, :cond_c4

    add-int/lit8 v7, v7, 0x1

    .line 246
    :cond_c4
    add-int/lit8 v4, v4, 0x1

    goto :goto_b2

    .line 249
    :cond_c7
    new-array v11, v7, [Landroid/content/pm/ActivityInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_7d

    .line 260
    .end local v2           #N:I
    .end local v4           #i:I
    .end local v7           #num:I
    :cond_cc
    and-int/lit8 v11, p2, 0x2

    if-eqz v11, :cond_12f

    .line 261
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 262
    .restart local v2       #N:I
    if-lez v2, :cond_12f

    .line 263
    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_113

    .line 264
    new-array v11, v2, [Landroid/content/pm/ActivityInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 272
    :goto_e2
    const/4 v4, 0x0

    .restart local v4       #i:I
    const/4 v5, 0x0

    .restart local v5       #j:I
    move v6, v5

    .end local v5           #j:I
    .restart local v6       #j:I
    :goto_e5
    if-ge v4, v2, :cond_12f

    .line 273
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 274
    .restart local v3       #activity:Landroid/content/pm/PackageParser$Activity;
    iget-object v11, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez v11, :cond_fb

    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_288

    .line 276
    :cond_fb
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Activity;

    move/from16 v0, p2

    invoke-static {v11, v0}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    aput-object v11, v12, v6

    .line 272
    :goto_10f
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5           #j:I
    .restart local v6       #j:I
    goto :goto_e5

    .line 266
    .end local v3           #activity:Landroid/content/pm/PackageParser$Activity;
    .end local v4           #i:I
    .end local v6           #j:I
    :cond_113
    const/4 v7, 0x0

    .line 267
    .restart local v7       #num:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_115
    if-ge v4, v2, :cond_12a

    .line 268
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Activity;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v11, :cond_127

    add-int/lit8 v7, v7, 0x1

    .line 267
    :cond_127
    add-int/lit8 v4, v4, 0x1

    goto :goto_115

    .line 270
    :cond_12a
    new-array v11, v7, [Landroid/content/pm/ActivityInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    goto :goto_e2

    .line 281
    .end local v2           #N:I
    .end local v4           #i:I
    .end local v7           #num:I
    :cond_12f
    and-int/lit8 v11, p2, 0x4

    if-eqz v11, :cond_192

    .line 282
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 283
    .restart local v2       #N:I
    if-lez v2, :cond_192

    .line 284
    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_176

    .line 285
    new-array v11, v2, [Landroid/content/pm/ServiceInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 293
    :goto_145
    const/4 v4, 0x0

    .restart local v4       #i:I
    const/4 v5, 0x0

    .restart local v5       #j:I
    move v6, v5

    .end local v5           #j:I
    .restart local v6       #j:I
    :goto_148
    if-ge v4, v2, :cond_192

    .line 294
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Service;

    .line 295
    .local v10, service:Landroid/content/pm/PackageParser$Service;
    iget-object v11, v10, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v11, v11, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez v11, :cond_15e

    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_285

    .line 297
    :cond_15e
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Service;

    move/from16 v0, p2

    invoke-static {v11, v0}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v11

    aput-object v11, v12, v6

    .line 293
    :goto_172
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5           #j:I
    .restart local v6       #j:I
    goto :goto_148

    .line 287
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v10           #service:Landroid/content/pm/PackageParser$Service;
    :cond_176
    const/4 v7, 0x0

    .line 288
    .restart local v7       #num:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_178
    if-ge v4, v2, :cond_18d

    .line 289
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Service;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v11, v11, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v11, :cond_18a

    add-int/lit8 v7, v7, 0x1

    .line 288
    :cond_18a
    add-int/lit8 v4, v4, 0x1

    goto :goto_178

    .line 291
    :cond_18d
    new-array v11, v7, [Landroid/content/pm/ServiceInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    goto :goto_145

    .line 302
    .end local v2           #N:I
    .end local v4           #i:I
    .end local v7           #num:I
    :cond_192
    and-int/lit8 v11, p2, 0x8

    if-eqz v11, :cond_1f5

    .line 303
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 304
    .restart local v2       #N:I
    if-lez v2, :cond_1f5

    .line 305
    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_1d9

    .line 306
    new-array v11, v2, [Landroid/content/pm/ProviderInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 314
    :goto_1a8
    const/4 v4, 0x0

    .restart local v4       #i:I
    const/4 v5, 0x0

    .restart local v5       #j:I
    move v6, v5

    .end local v5           #j:I
    .restart local v6       #j:I
    :goto_1ab
    if-ge v4, v2, :cond_1f5

    .line 315
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Provider;

    .line 316
    .local v9, provider:Landroid/content/pm/PackageParser$Provider;
    iget-object v11, v9, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v11, v11, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez v11, :cond_1c1

    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_282

    .line 318
    :cond_1c1
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Provider;

    move/from16 v0, p2

    invoke-static {v11, v0}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v11

    aput-object v11, v12, v6

    .line 314
    :goto_1d5
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5           #j:I
    .restart local v6       #j:I
    goto :goto_1ab

    .line 308
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v9           #provider:Landroid/content/pm/PackageParser$Provider;
    :cond_1d9
    const/4 v7, 0x0

    .line 309
    .restart local v7       #num:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1db
    if-ge v4, v2, :cond_1f0

    .line 310
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Provider;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v11, v11, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v11, :cond_1ed

    add-int/lit8 v7, v7, 0x1

    .line 309
    :cond_1ed
    add-int/lit8 v4, v4, 0x1

    goto :goto_1db

    .line 312
    :cond_1f0
    new-array v11, v7, [Landroid/content/pm/ProviderInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    goto :goto_1a8

    .line 323
    .end local v2           #N:I
    .end local v4           #i:I
    .end local v7           #num:I
    :cond_1f5
    and-int/lit8 v11, p2, 0x10

    if-eqz v11, :cond_21d

    .line 324
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 325
    .restart local v2       #N:I
    if-lez v2, :cond_21d

    .line 326
    new-array v11, v2, [Landroid/content/pm/InstrumentationInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 327
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_206
    if-ge v4, v2, :cond_21d

    .line 328
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Instrumentation;

    move/from16 v0, p2

    invoke-static {v11, v0}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v11

    aput-object v11, v12, v4

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_206

    .line 333
    .end local v2           #N:I
    .end local v4           #i:I
    :cond_21d
    move/from16 v0, p2

    and-int/lit16 v11, v0, 0x1000

    if-eqz v11, :cond_265

    .line 334
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 335
    .restart local v2       #N:I
    if-lez v2, :cond_247

    .line 336
    new-array v11, v2, [Landroid/content/pm/PermissionInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 337
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_230
    if-ge v4, v2, :cond_247

    .line 338
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Permission;

    move/from16 v0, p2

    invoke-static {v11, v0}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v11

    aput-object v11, v12, v4

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_230

    .line 341
    .end local v4           #i:I
    :cond_247
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 342
    if-lez v2, :cond_265

    .line 343
    new-array v11, v2, [Ljava/lang/String;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 344
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_254
    if-ge v4, v2, :cond_265

    .line 345
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v12, v4

    .line 344
    add-int/lit8 v4, v4, 0x1

    goto :goto_254

    .line 349
    .end local v2           #N:I
    .end local v4           #i:I
    :cond_265
    and-int/lit8 v11, p2, 0x40

    if-eqz v11, :cond_27f

    .line 350
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v11, :cond_280

    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v11

    .line 351
    .restart local v2       #N:I
    :goto_270
    if-lez v2, :cond_27f

    .line 352
    new-array v11, v2, [Landroid/content/pm/Signature;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 353
    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v12, 0x0

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    .end local v2           #N:I
    :cond_27f
    return-object v8

    .line 350
    :cond_280
    const/4 v2, 0x0

    goto :goto_270

    .restart local v2       #N:I
    .restart local v4       #i:I
    .restart local v6       #j:I
    .restart local v9       #provider:Landroid/content/pm/PackageParser$Provider;
    :cond_282
    move v5, v6

    .end local v6           #j:I
    .restart local v5       #j:I
    goto/16 :goto_1d5

    .end local v5           #j:I
    .end local v9           #provider:Landroid/content/pm/PackageParser$Provider;
    .restart local v6       #j:I
    .restart local v10       #service:Landroid/content/pm/PackageParser$Service;
    :cond_285
    move v5, v6

    .end local v6           #j:I
    .restart local v5       #j:I
    goto/16 :goto_172

    .end local v5           #j:I
    .end local v10           #service:Landroid/content/pm/PackageParser$Service;
    .restart local v3       #activity:Landroid/content/pm/PackageParser$Activity;
    .restart local v6       #j:I
    :cond_288
    move v5, v6

    .end local v6           #j:I
    .restart local v5       #j:I
    goto/16 :goto_10f

    .end local v5           #j:I
    .restart local v6       #j:I
    :cond_28b
    move v5, v6

    .end local v6           #j:I
    .restart local v5       #j:I
    goto/16 :goto_aa
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .parameter "pg"
    .parameter "flags"

    .prologue
    .line 3438
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 3444
    :goto_3
    return-object v0

    .line 3439
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 3440
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    goto :goto_3

    .line 3442
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 3443
    .local v0, pgi:Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    goto :goto_3
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .registers 4
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 3427
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 3433
    :goto_3
    return-object v0

    .line 3428
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 3429
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    goto :goto_3

    .line 3431
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 3432
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    goto :goto_3
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;
    .registers 6
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 3545
    if-nez p0, :cond_5

    move-object v0, v1

    .line 3558
    :goto_4
    return-object v0

    .line 3546
    :cond_5
    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v2, v3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1c

    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_19

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v2, :cond_1c

    .line 3549
    :cond_19
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    goto :goto_4

    .line 3552
    :cond_1c
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 3553
    .local v0, pi:Landroid/content/pm/ProviderInfo;
    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 3554
    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_2d

    .line 3555
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 3557
    :cond_2d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_4
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .parameter "s"
    .parameter "flags"

    .prologue
    .line 3503
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 3511
    :goto_3
    return-object v0

    .line 3504
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3505
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    .line 3508
    :cond_11
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 3509
    .local v0, si:Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 3510
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_3
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .registers 2
    .parameter "name"

    .prologue
    .line 202
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 10
    .parameter "jarFile"
    .parameter "je"
    .parameter "readBuffer"

    .prologue
    const/4 v2, 0x0

    .line 364
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 365
    .local v1, is:Ljava/io/InputStream;
    :cond_a
    const/4 v3, 0x0

    array-length v4, p3

    invoke-virtual {v1, p3, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    .line 368
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 369
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1b} :catch_49

    move-result-object v2

    .line 377
    .end local v1           #is:Ljava/io/InputStream;
    :cond_1c
    :goto_1c
    return-object v2

    .line 370
    :catch_1d
    move-exception v0

    .line 371
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 373
    .end local v0           #e:Ljava/io/IOException;
    :catch_49
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .registers 29
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .parameter "receiver"
    .parameter "hardwareAccelerated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1954
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 1957
    .local v16, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_2a

    .line 1958
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x17

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v10, 0x7

    const/16 v11, 0x11

    const/4 v12, 0x5

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1969
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_5c

    const-string v2, "<receiver>"

    :goto_32
    iput-object v2, v3, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 1970
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v16

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 1971
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 1973
    new-instance v14, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v14, v2, v3}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 1974
    .local v14, a:Landroid/content/pm/PackageParser$Activity;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_5f

    .line 1975
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 1976
    const/4 v14, 0x0

    .line 2183
    .end local v14           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_5b
    :goto_5b
    return-object v14

    .line 1969
    :cond_5c
    const-string v2, "<activity>"

    goto :goto_32

    .line 1979
    .restart local v14       #a:Landroid/content/pm/PackageParser$Activity;
    :cond_5f
    const/4 v2, 0x6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    .line 1981
    .local v17, setExported:Z
    if-eqz v17, :cond_74

    .line 1982
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 1986
    :cond_74
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1989
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x1a

    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1994
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 1996
    .local v18, str:Ljava/lang/String;
    if-nez v18, :cond_205

    .line 1997
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 2002
    :goto_a6
    const/16 v2, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 2004
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-static {v3, v4, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 2007
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2008
    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 2011
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2014
    :cond_df
    const/16 v2, 0xa

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 2017
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2020
    :cond_f2
    const/16 v2, 0xb

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 2023
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2026
    :cond_105
    const/16 v2, 0x15

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 2029
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2032
    :cond_118
    const/16 v2, 0x12

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 2035
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2038
    :cond_12b
    const/16 v2, 0xc

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_13e

    .line 2041
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2044
    :cond_13e
    const/16 v2, 0xd

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_151

    .line 2047
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2050
    :cond_151
    const/16 v3, 0x13

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_21b

    const/4 v2, 0x1

    :goto_15e
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 2053
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2056
    :cond_16e
    const/16 v2, 0x16

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_181

    .line 2059
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2062
    :cond_181
    const/16 v2, 0x18

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 2065
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2068
    :cond_194
    if-nez p7, :cond_21e

    .line 2069
    const/16 v2, 0x19

    move-object/from16 v0, v16

    move/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1aa

    .line 2072
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2075
    :cond_1aa
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0xe

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2078
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0xf

    const/4 v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 2081
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x10

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 2084
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x14

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 2092
    :goto_1de
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 2094
    if-eqz p7, :cond_1fd

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1fd

    .line 2097
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_1fd

    .line 2098
    const/4 v2, 0x0

    const-string v3, "Heavy-weight applications can not have receivers in main process"

    aput-object v3, p6, v2

    .line 2102
    :cond_1fd
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_229

    .line 2103
    const/4 v14, 0x0

    goto/16 :goto_5b

    .line 1999
    :cond_205
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_219

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_215
    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_a6

    :cond_219
    const/4 v2, 0x0

    goto :goto_215

    .line 2050
    :cond_21b
    const/4 v2, 0x0

    goto/16 :goto_15e

    .line 2088
    :cond_21e
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2089
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    goto :goto_1de

    .line 2106
    :cond_229
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 2109
    .local v15, outerDepth:I
    :cond_22d
    :goto_22d
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, type:I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_414

    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_241

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v15, :cond_414

    .line 2111
    :cond_241
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_22d

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_22d

    .line 2115
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d0

    .line 2116
    new-instance v7, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v7, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 2117
    .local v7, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez p7, :cond_274

    const/4 v9, 0x1

    :goto_25f
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_276

    .line 2118
    const/4 v14, 0x0

    goto/16 :goto_5b

    .line 2117
    :cond_274
    const/4 v9, 0x0

    goto :goto_25f

    .line 2120
    :cond_276
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v2

    if-nez v2, :cond_2c9

    .line 2121
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_2ab

    .line 2122
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in intent filter at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22d

    .line 2126
    :cond_2ab
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in intent filter at mArchiveSourcePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22d

    .line 2131
    :cond_2c9
    iget-object v2, v14, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22d

    .line 2133
    .end local v7           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2d0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f4

    .line 2134
    iget-object v12, v14, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v14, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_22d

    .line 2136
    const/4 v14, 0x0

    goto/16 :goto_5b

    .line 2140
    :cond_2f4
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_35d

    .line 2141
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :goto_31a
    if-eqz p7, :cond_39d

    .line 2146
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_365

    .line 2147
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <receiver>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :goto_358
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_22d

    .line 2143
    :cond_35d
    const-string v2, "PackageParser"

    const-string v3, "Problem in package mArchiveSourcePath:"

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31a

    .line 2151
    :cond_365
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <receiver>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mArchiveSourcePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_358

    .line 2156
    :cond_39d
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_3db

    .line 2157
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <activity>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_358

    .line 2161
    :cond_3db
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <activity>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mArchiveSourcePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_358

    .line 2179
    :cond_414
    if-nez v17, :cond_5b

    .line 2180
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v14, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_425

    const/4 v2, 0x1

    :goto_421
    iput-boolean v2, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    goto/16 :goto_5b

    :cond_425
    const/4 v2, 0x0

    goto :goto_421
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .registers 33
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2189
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2192
    .local v19, sa:Landroid/content/res/TypedArray;
    const/4 v2, 0x7

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v24

    .line 2194
    .local v24, targetActivity:Ljava/lang/String;
    if-nez v24, :cond_1e

    .line 2195
    const/4 v2, 0x0

    const-string v3, "<activity-alias> does not specify android:targetActivity"

    aput-object v3, p6, v2

    .line 2196
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2197
    const/4 v15, 0x0

    .line 2342
    :cond_1d
    :goto_1d
    return-object v15

    .line 2200
    :cond_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-static {v2, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2202
    if-nez v24, :cond_33

    .line 2203
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2204
    const/4 v15, 0x0

    goto :goto_1d

    .line 2207
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_5a

    .line 2208
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x4

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2217
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v3, "<activity-alias>"

    iput-object v3, v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 2220
    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 2221
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2223
    const/16 v23, 0x0

    .line 2225
    .local v23, target:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2226
    .local v14, NA:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_76
    move/from16 v0, v16

    if-ge v0, v14, :cond_96

    .line 2227
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/PackageParser$Activity;

    .line 2228
    .local v22, t:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 2229
    move-object/from16 v23, v22

    .line 2234
    .end local v22           #t:Landroid/content/pm/PackageParser$Activity;
    :cond_96
    if-nez v23, :cond_bf

    .line 2235
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<activity-alias> target activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in manifest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p6, v2

    .line 2237
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2238
    const/4 v15, 0x0

    goto/16 :goto_1d

    .line 2226
    .restart local v22       #t:Landroid/content/pm/PackageParser$Activity;
    :cond_bc
    add-int/lit8 v16, v16, 0x1

    goto :goto_76

    .line 2241
    .end local v22           #t:Landroid/content/pm/PackageParser$Activity;
    :cond_bf
    new-instance v17, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v17 .. v17}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 2242
    .local v17, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 2243
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 2244
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2245
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/PackageItemInfo;->icon:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 2246
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/PackageItemInfo;->logo:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 2247
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 2248
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2249
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2250
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 2251
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-nez v2, :cond_12a

    .line 2252
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 2254
    :cond_12a
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 2255
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 2256
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 2257
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 2258
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 2260
    new-instance v15, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v17

    invoke-direct {v15, v2, v0}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 2261
    .local v15, a:Landroid/content/pm/PackageParser$Activity;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_172

    .line 2262
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2263
    const/4 v15, 0x0

    goto/16 :goto_1d

    .line 2266
    :cond_172
    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    .line 2268
    .local v20, setExported:Z
    if-eqz v20, :cond_187

    .line 2269
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 2274
    :cond_187
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 2276
    .local v21, str:Ljava/lang/String;
    if-eqz v21, :cond_1a3

    .line 2277
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1ae

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_1a1
    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 2280
    :cond_1a3
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2282
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_1b0

    .line 2283
    const/4 v15, 0x0

    goto/16 :goto_1d

    .line 2277
    :cond_1ae
    const/4 v2, 0x0

    goto :goto_1a1

    .line 2286
    :cond_1b0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    .line 2289
    .local v18, outerDepth:I
    :cond_1b4
    :goto_1b4
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    .local v25, type:I
    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_2f2

    const/4 v2, 0x3

    move/from16 v0, v25

    if-ne v0, v2, :cond_1ca

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_2f2

    .line 2291
    :cond_1ca
    const/4 v2, 0x3

    move/from16 v0, v25

    if-eq v0, v2, :cond_1b4

    const/4 v2, 0x4

    move/from16 v0, v25

    if-eq v0, v2, :cond_1b4

    .line 2295
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_255

    .line 2296
    new-instance v7, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v7, v15}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 2297
    .local v7, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1fb

    .line 2298
    const/4 v15, 0x0

    goto/16 :goto_1d

    .line 2300
    :cond_1fb
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v2

    if-nez v2, :cond_24e

    .line 2301
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_230

    .line 2302
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in intent filter at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b4

    .line 2306
    :cond_230
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in intent filter at mArchiveSourcePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b4

    .line 2311
    :cond_24e
    iget-object v2, v15, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b4

    .line 2313
    .end local v7           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_255
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_279

    .line 2314
    iget-object v12, v15, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v15, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1b4

    .line 2316
    const/4 v15, 0x0

    goto/16 :goto_1d

    .line 2320
    :cond_279
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_2ba

    .line 2321
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <activity-alias>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :goto_2b5
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b4

    .line 2325
    :cond_2ba
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <activity-alias>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mArchiveSourcePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b5

    .line 2338
    :cond_2f2
    if-nez v20, :cond_1d

    .line 2339
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v15, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_303

    const/4 v2, 0x1

    :goto_2ff
    iput-boolean v2, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    goto/16 :goto_1d

    :cond_303
    const/4 v2, 0x0

    goto :goto_2ff
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .registers 15
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "tag"
    .parameter "outInfo"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2757
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2760
    .local v6, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v0, 0x1

    if-eq v7, v0, :cond_c2

    const/4 v0, 0x3

    if-ne v7, v0, :cond_14

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v6, :cond_c2

    .line 2762
    :cond_14
    const/4 v0, 0x3

    if-eq v7, v0, :cond_4

    const/4 v0, 0x4

    if-eq v7, v0, :cond_4

    .line 2766
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2767
    iget-object v4, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 2769
    const/4 v0, 0x0

    .line 2790
    :goto_37
    return v0

    .line 2773
    :cond_38
    sget-boolean v0, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v0, :cond_80

    .line 2774
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :goto_7c
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 2778
    :cond_80
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mArchiveSourcePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 2790
    :cond_c2
    const/4 v0, 0x1

    goto/16 :goto_37
.end method

.method private parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z
    .registers 48
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1591
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    .line 1592
    .local v25, ai:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 1594
    .local v33, pkgName:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v36

    .line 1597
    .local v36, sa:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v31

    .line 1599
    .local v31, name:Ljava/lang/String;
    if-eqz v31, :cond_41

    .line 1600
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1601
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-nez v3, :cond_41

    .line 1602
    invoke-virtual/range {v36 .. v36}, Landroid/content/res/TypedArray;->recycle()V

    .line 1603
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1604
    const/4 v3, 0x0

    .line 1911
    :goto_40
    return v3

    .line 1608
    :cond_41
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v30

    .line 1610
    .local v30, manageSpaceActivity:Ljava/lang/String;
    if-eqz v30, :cond_59

    .line 1611
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 1615
    :cond_59
    const/16 v3, 0x11

    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    .line 1617
    .local v26, allowBackup:Z
    if-eqz v26, :cond_b5

    .line 1618
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v4, 0x8000

    or-int/2addr v3, v4

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1622
    const/16 v3, 0x10

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v27

    .line 1624
    .local v27, backupAgent:Ljava/lang/String;
    if-eqz v27, :cond_b5

    .line 1625
    move-object/from16 v0, v33

    move-object/from16 v1, v27

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1631
    const/16 v3, 0x12

    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 1634
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x1

    or-int/2addr v3, v4

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1636
    :cond_9f
    const/16 v3, 0x15

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 1639
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x2

    or-int/2addr v3, v4

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1644
    .end local v27           #backupAgent:Ljava/lang/String;
    :cond_b5
    const/4 v3, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v40

    .line 1646
    .local v40, v:Landroid/util/TypedValue;
    if-eqz v40, :cond_d0

    move-object/from16 v0, v40

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_d0

    .line 1647
    invoke-virtual/range {v40 .. v40}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1650
    :cond_d0
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 1652
    const/16 v3, 0x16

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 1654
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1656
    const/16 v3, 0xd

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 1659
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_11b

    .line 1660
    const/16 v3, 0x8

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 1663
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x8

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1667
    :cond_11b
    and-int/lit8 v3, p5, 0x10

    if-eqz v3, :cond_12a

    .line 1668
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1671
    :cond_12a
    and-int/lit8 v3, p5, 0x20

    if-eqz v3, :cond_139

    .line 1672
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x4

    or-int/2addr v3, v4

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1675
    :cond_139
    const/16 v3, 0xa

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 1678
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1681
    :cond_14e
    const/16 v3, 0x14

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 1684
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1687
    :cond_163
    const/16 v3, 0x17

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 1694
    .local v14, hardwareAccelerated:Z
    const/4 v3, 0x7

    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 1697
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1700
    :cond_180
    const/16 v3, 0xe

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_195

    .line 1703
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1706
    :cond_195
    const/4 v3, 0x5

    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1a9

    .line 1709
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1712
    :cond_1a9
    const/16 v3, 0xf

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 1715
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1718
    :cond_1be
    const/16 v3, 0x18

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1d4

    .line 1721
    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10

    or-int/2addr v3, v4

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1725
    :cond_1d4
    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v37

    .line 1727
    .local v37, str:Ljava/lang/String;
    if-eqz v37, :cond_26b

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_26b

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    :goto_1e8
    move-object/from16 v0, v25

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 1729
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_26e

    .line 1730
    const/16 v3, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v37

    .line 1739
    :goto_1ff
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, p6

    invoke-static {v3, v4, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 1742
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-nez v3, :cond_24d

    .line 1744
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_277

    .line 1745
    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 1754
    .local v5, pname:Ljava/lang/CharSequence;
    :goto_22b
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1757
    const/16 v3, 0x9

    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, v25

    iput-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1775
    .end local v5           #pname:Ljava/lang/CharSequence;
    :cond_24d
    const/16 v3, 0x19

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 1778
    invoke-virtual/range {v36 .. v36}, Landroid/content/res/TypedArray;->recycle()V

    .line 1780
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_280

    .line 1781
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1782
    const/4 v3, 0x0

    goto/16 :goto_40

    .line 1727
    :cond_26b
    const/4 v3, 0x0

    goto/16 :goto_1e8

    .line 1736
    :cond_26e
    const/16 v3, 0xc

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v37

    goto :goto_1ff

    .line 1751
    :cond_277
    const/16 v3, 0xb

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #pname:Ljava/lang/CharSequence;
    goto :goto_22b

    .line 1785
    .end local v5           #pname:Ljava/lang/CharSequence;
    :cond_280
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v28

    .line 1789
    .local v28, innerDepth:I
    :cond_284
    :goto_284
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v39

    .local v39, type:I
    const/4 v3, 0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_4af

    const/4 v3, 0x3

    move/from16 v0, v39

    if-ne v0, v3, :cond_29a

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v28

    if-le v3, v0, :cond_4af

    .line 1790
    :cond_29a
    const/4 v3, 0x3

    move/from16 v0, v39

    if-eq v0, v3, :cond_284

    const/4 v3, 0x4

    move/from16 v0, v39

    if-eq v0, v3, :cond_284

    .line 1794
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v38

    .line 1795
    .local v38, tagName:Ljava/lang/String;
    const-string v3, "activity"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2da

    .line 1796
    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v24

    .line 1798
    .local v24, a:Landroid/content/pm/PackageParser$Activity;
    if-nez v24, :cond_2d0

    .line 1799
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1800
    const/4 v3, 0x0

    goto/16 :goto_40

    .line 1803
    :cond_2d0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_284

    .line 1805
    .end local v24           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_2da
    const-string/jumbo v3, "receiver"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_311

    .line 1806
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    invoke-direct/range {v15 .. v23}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v24

    .line 1807
    .restart local v24       #a:Landroid/content/pm/PackageParser$Activity;
    if-nez v24, :cond_306

    .line 1808
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1809
    const/4 v3, 0x0

    goto/16 :goto_40

    .line 1812
    :cond_306
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_284

    .line 1814
    .end local v24           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_311
    const-string/jumbo v3, "service"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_336

    .line 1815
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v35

    .line 1816
    .local v35, s:Landroid/content/pm/PackageParser$Service;
    if-nez v35, :cond_32b

    .line 1817
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1818
    const/4 v3, 0x0

    goto/16 :goto_40

    .line 1821
    :cond_32b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_284

    .line 1823
    .end local v35           #s:Landroid/content/pm/PackageParser$Service;
    :cond_336
    const-string/jumbo v3, "provider"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35b

    .line 1824
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v32

    .line 1825
    .local v32, p:Landroid/content/pm/PackageParser$Provider;
    if-nez v32, :cond_350

    .line 1826
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1827
    const/4 v3, 0x0

    goto/16 :goto_40

    .line 1830
    :cond_350
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_284

    .line 1832
    .end local v32           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_35b
    const-string v3, "activity-alias"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37f

    .line 1833
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v24

    .line 1834
    .restart local v24       #a:Landroid/content/pm/PackageParser$Activity;
    if-nez v24, :cond_374

    .line 1835
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1836
    const/4 v3, 0x0

    goto/16 :goto_40

    .line 1839
    :cond_374
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_284

    .line 1841
    .end local v24           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_37f
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ad

    .line 1845
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    invoke-direct/range {v6 .. v11}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v3, :cond_284

    .line 1847
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1848
    const/4 v3, 0x0

    goto/16 :goto_40

    .line 1851
    :cond_3ad
    const-string/jumbo v3, "uses-library"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42a

    .line 1852
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v36

    .line 1857
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v29

    .line 1859
    .local v29, lname:Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    .line 1863
    .local v34, req:Z
    invoke-virtual/range {v36 .. v36}, Landroid/content/res/TypedArray;->recycle()V

    .line 1865
    if-eqz v29, :cond_3fe

    .line 1866
    if-eqz v34, :cond_403

    .line 1867
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-nez v3, :cond_3e7

    .line 1868
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 1870
    :cond_3e7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3fe

    .line 1871
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1883
    :cond_3fe
    :goto_3fe
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_284

    .line 1874
    :cond_403
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-nez v3, :cond_412

    .line 1875
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 1877
    :cond_412
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3fe

    .line 1878
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3fe

    .line 1885
    .end local v29           #lname:Ljava/lang/String;
    .end local v34           #req:Z
    :cond_42a
    const-string/jumbo v3, "uses-package"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43a

    .line 1888
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_284

    .line 1892
    :cond_43a
    sget-boolean v3, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v3, :cond_479

    .line 1893
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <application>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :goto_474
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_284

    .line 1897
    :cond_479
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <application>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "mArchiveSourcePath"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_474

    .line 1911
    .end local v38           #tagName:Ljava/lang/String;
    :cond_4af
    const/4 v3, 0x1

    goto/16 :goto_40
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .registers 15
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1532
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1535
    .local v7, sa:Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_1d

    .line 1536
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x6

    move-object v1, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII)V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1541
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 1544
    :cond_1d
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v7, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 1546
    new-instance v5, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v5, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 1548
    .local v5, a:Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v0, p5, v0

    if-eqz v0, :cond_3b

    .line 1549
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1550
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1551
    const/4 v5, 0x0

    .line 1585
    .end local v5           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :goto_3a
    return-object v5

    .line 1557
    .restart local v5       #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_3b
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 1559
    .local v8, str:Ljava/lang/String;
    iget-object v1, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v8, :cond_72

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_48
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 1561
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 1565
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 1569
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1571
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_74

    .line 1572
    const/4 v0, 0x0

    const-string v1, "<instrumentation> does not specify targetPackage"

    aput-object v1, p5, v0

    .line 1573
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1574
    const/4 v5, 0x0

    goto :goto_3a

    .line 1559
    :cond_72
    const/4 v0, 0x0

    goto :goto_48

    .line 1577
    :cond_74
    const-string v4, "<instrumentation>"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 1579
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1580
    const/4 v5, 0x0

    goto :goto_3a

    .line 1583
    :cond_87
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a
.end method

.method private parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z
    .registers 24
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "isActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2929
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2932
    .local v8, sa:Landroid/content/res/TypedArray;
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 2934
    .local v7, priority:I
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 2936
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 2938
    .local v11, v:Landroid/util/TypedValue;
    if-eqz v11, :cond_2c

    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p5

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v13, :cond_2c

    .line 2939
    invoke-virtual {v11}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p5

    iput-object v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2942
    :cond_2c
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 2945
    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 2948
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2950
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 2953
    .local v5, outerDepth:I
    :cond_47
    :goto_47
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, type:I
    const/4 v13, 0x1

    if-eq v10, v13, :cond_1ab

    const/4 v13, 0x3

    if-ne v10, v13, :cond_57

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_1ab

    .line 2954
    :cond_57
    const/4 v13, 0x3

    if-eq v10, v13, :cond_47

    const/4 v13, 0x4

    if-eq v10, v13, :cond_47

    .line 2958
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2959
    .local v4, nodeName:Ljava/lang/String;
    const-string v13, "action"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8a

    .line 2960
    const-string v13, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v14, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2962
    .local v12, value:Ljava/lang/String;
    if-eqz v12, :cond_7a

    const-string v13, ""

    if-ne v12, v13, :cond_81

    .line 2963
    :cond_7a
    const/4 v13, 0x0

    const-string v14, "No value supplied for <android:name>"

    aput-object v14, p6, v13

    .line 2964
    const/4 v13, 0x0

    .line 3064
    .end local v4           #nodeName:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :goto_80
    return v13

    .line 2966
    .restart local v4       #nodeName:Ljava/lang/String;
    .restart local v12       #value:Ljava/lang/String;
    :cond_81
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2968
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    goto :goto_47

    .line 2969
    .end local v12           #value:Ljava/lang/String;
    :cond_8a
    const-string v13, "category"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b3

    .line 2970
    const-string v13, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v14, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2972
    .restart local v12       #value:Ljava/lang/String;
    if-eqz v12, :cond_a3

    const-string v13, ""

    if-ne v12, v13, :cond_aa

    .line 2973
    :cond_a3
    const/4 v13, 0x0

    const-string v14, "No value supplied for <android:name>"

    aput-object v14, p6, v13

    .line 2974
    const/4 v13, 0x0

    goto :goto_80

    .line 2976
    :cond_aa
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2978
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto :goto_47

    .line 2980
    .end local v12           #value:Ljava/lang/String;
    :cond_b3
    const-string v13, "data"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_132

    .line 2981
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2984
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 2986
    .local v9, str:Ljava/lang/String;
    if-eqz v9, :cond_d2

    .line 2988
    :try_start_cd
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_d2
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_cd .. :try_end_d2} :catch_124

    .line 2996
    :cond_d2
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 2998
    if-eqz v9, :cond_df

    .line 2999
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 3002
    :cond_df
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 3004
    .local v3, host:Ljava/lang/String;
    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 3006
    .local v6, port:Ljava/lang/String;
    if-eqz v3, :cond_f2

    .line 3007
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    :cond_f2
    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 3012
    if-eqz v9, :cond_100

    .line 3013
    const/4 v13, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 3016
    :cond_100
    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 3018
    if-eqz v9, :cond_10e

    .line 3019
    const/4 v13, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 3022
    :cond_10e
    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 3024
    if-eqz v9, :cond_11c

    .line 3025
    const/4 v13, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 3028
    :cond_11c
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3029
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_47

    .line 2989
    .end local v3           #host:Ljava/lang/String;
    .end local v6           #port:Ljava/lang/String;
    :catch_124
    move-exception v2

    .line 2990
    .local v2, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const/4 v13, 0x0

    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, p6, v13

    .line 2991
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2992
    const/4 v13, 0x0

    goto/16 :goto_80

    .line 3031
    .end local v2           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v9           #str:Ljava/lang/String;
    :cond_132
    sget-boolean v13, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v13, :cond_173

    .line 3032
    const-string v13, "PackageParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown element under <intent-filter>: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :goto_16e
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_47

    .line 3036
    :cond_173
    const-string v13, "PackageParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown element under <intent-filter>: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "mArchiveSourcePath"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16e

    .line 3047
    .end local v4           #nodeName:Ljava/lang/String;
    :cond_1ab
    const-string v13, "android.intent.category.DEFAULT"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p5

    iput-boolean v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 3064
    const/4 v13, 0x1

    goto/16 :goto_80
.end method

.method private parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 15
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "data"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2798
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2801
    .local v2, sa:Landroid/content/res/TypedArray;
    if-nez p4, :cond_10

    .line 2802
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 2805
    .restart local p4
    :cond_10
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2807
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1e

    .line 2808
    const-string v5, "<meta-data> requires an android:name attribute"

    aput-object v5, p5, v6

    .line 2809
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2861
    :goto_1d
    return-object v4

    .line 2813
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 2815
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2817
    .local v3, v:Landroid/util/TypedValue;
    if-eqz v3, :cond_3a

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_3a

    .line 2819
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2857
    :goto_32
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2859
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, p4

    .line 2861
    goto :goto_1d

    .line 2821
    :cond_3a
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2824
    if-eqz v3, :cond_fc

    .line 2825
    iget v7, v3, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_57

    .line 2826
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2827
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_53
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 2828
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_57
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_68

    .line 2829
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_66

    move v4, v5

    :goto_62
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_32

    :cond_66
    move v4, v6

    goto :goto_62

    .line 2830
    :cond_68
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7a

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7a

    .line 2832
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_32

    .line 2833
    :cond_7a
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_87

    .line 2834
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_32

    .line 2837
    :cond_87
    sget-boolean v4, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v4, :cond_c3

    .line 2838
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 2842
    :cond_c3
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mArchiveSourcePath"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 2852
    :cond_fc
    const-string v4, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v4, p5, v6

    .line 2853
    const/4 p4, 0x0

    goto/16 :goto_32
.end method

.method private parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 43
    .parameter "res"
    .parameter "parser"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    move-object/from16 v7, p2

    .line 860
    .local v7, attrs:Landroid/util/AttributeSet;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 861
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 862
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 863
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 865
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v7, v1, v2}, Landroid/content/pm/PackageParser;->parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 866
    .local v25, pkgName:Ljava/lang/String;
    if-nez v25, :cond_2a

    .line 867
    const/16 v3, -0x6a

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 868
    const/4 v4, 0x0

    .line 1306
    :cond_29
    :goto_29
    return-object v4

    .line 872
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v3, :cond_41

    .line 873
    const/4 v3, 0x0

    const-string v5, "coreApp"

    const/4 v6, 0x0

    invoke-interface {v7, v3, v5, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    .line 874
    .local v13, core:Z
    if-nez v13, :cond_41

    .line 875
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 876
    const/4 v4, 0x0

    goto :goto_29

    .line 880
    .end local v13           #core:Z
    :cond_41
    new-instance v4, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 881
    .local v4, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v15, 0x0

    .line 883
    .local v15, foundApp:Z
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 885
    .local v27, sa:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 887
    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 889
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v3, :cond_71

    .line 890
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 892
    :cond_71
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v28

    .line 894
    .local v28, str:Ljava/lang/String;
    if-eqz v28, :cond_d1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d1

    .line 895
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-static {v0, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 896
    .local v21, nameError:Ljava/lang/String;
    if-eqz v21, :cond_c1

    const-string v3, "android"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 897
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v3

    .line 899
    const/16 v3, -0x6b

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 900
    const/4 v4, 0x0

    goto/16 :goto_29

    .line 902
    :cond_c1
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 903
    const/4 v3, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v4, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 906
    .end local v21           #nameError:Ljava/lang/String;
    :cond_d1
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 908
    const/4 v3, 0x4

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v4, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 911
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 914
    const/16 v31, 0x1

    .line 915
    .local v31, supportsSmallScreens:I
    const/16 v30, 0x1

    .line 916
    .local v30, supportsNormalScreens:I
    const/16 v29, 0x1

    .line 917
    .local v29, supportsLargeScreens:I
    const/16 v32, 0x1

    .line 918
    .local v32, supportsXLargeScreens:I
    const/16 v26, 0x1

    .line 919
    .local v26, resizeable:I
    const/4 v11, 0x1

    .line 921
    .local v11, anyDensity:I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    .line 923
    .local v24, outerDepth:I
    :cond_f3
    :goto_f3
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v36

    .local v36, type:I
    const/4 v3, 0x1

    move/from16 v0, v36

    if-eq v0, v3, :cond_60f

    const/4 v3, 0x3

    move/from16 v0, v36

    if-ne v0, v3, :cond_109

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v24

    if-le v3, v0, :cond_60f

    .line 924
    :cond_109
    const/4 v3, 0x3

    move/from16 v0, v36

    if-eq v0, v3, :cond_f3

    const/4 v3, 0x4

    move/from16 v0, v36

    if-eq v0, v3, :cond_f3

    .line 928
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v33

    .line 929
    .local v33, tagName:Ljava/lang/String;
    const-string v3, "application"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 930
    if-eqz v15, :cond_12e

    .line 936
    const-string v3, "PackageParser"

    const-string v5, "<manifest> has more than one <application>"

    invoke-static {v3, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f3

    .line 942
    :cond_12e
    const/4 v15, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    .line 943
    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f3

    .line 944
    const/4 v4, 0x0

    goto/16 :goto_29

    .line 946
    :cond_142
    const-string/jumbo v3, "permission-group"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15e

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 947
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    move-result-object v3

    if-nez v3, :cond_f3

    .line 948
    const/4 v4, 0x0

    goto/16 :goto_29

    .line 950
    :cond_15e
    const-string/jumbo v3, "permission"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17a

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 951
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v3

    if-nez v3, :cond_f3

    .line 952
    const/4 v4, 0x0

    goto/16 :goto_29

    .line 954
    :cond_17a
    const-string/jumbo v3, "permission-tree"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_196

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 955
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v3

    if-nez v3, :cond_f3

    .line 956
    const/4 v4, 0x0

    goto/16 :goto_29

    .line 958
    :cond_196
    const-string/jumbo v3, "uses-permission"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cd

    .line 959
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 964
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 967
    .local v20, name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 969
    if-eqz v20, :cond_1c8

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c8

    .line 970
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    :cond_1c8
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 975
    .end local v20           #name:Ljava/lang/String;
    :cond_1cd
    const-string/jumbo v3, "uses-configuration"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_230

    .line 976
    new-instance v12, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v12}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 977
    .local v12, cPref:Landroid/content/pm/ConfigurationInfo;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 979
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v12, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 982
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v12, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 985
    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_209

    .line 988
    iget v3, v12, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v12, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 990
    :cond_209
    const/4 v3, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v12, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 993
    const/4 v3, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_223

    .line 996
    iget v3, v12, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v12, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 998
    :cond_223
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 999
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1003
    .end local v12           #cPref:Landroid/content/pm/ConfigurationInfo;
    :cond_230
    const-string/jumbo v3, "uses-feature"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_299

    .line 1004
    new-instance v14, Landroid/content/pm/FeatureInfo;

    invoke-direct {v14}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1005
    .local v14, fi:Landroid/content/pm/FeatureInfo;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1009
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 1011
    iget-object v3, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_25f

    .line 1012
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v14, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 1016
    :cond_25f
    const/4 v3, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_26f

    .line 1019
    iget v3, v14, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v14, Landroid/content/pm/FeatureInfo;->flags:I

    .line 1021
    :cond_26f
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1022
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-nez v3, :cond_27d

    .line 1023
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 1025
    :cond_27d
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v3, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_294

    .line 1028
    new-instance v12, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v12}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1029
    .restart local v12       #cPref:Landroid/content/pm/ConfigurationInfo;
    iget v3, v14, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v3, v12, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1030
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    .end local v12           #cPref:Landroid/content/pm/ConfigurationInfo;
    :cond_294
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1035
    .end local v14           #fi:Landroid/content/pm/FeatureInfo;
    :cond_299
    const-string/jumbo v3, "uses-sdk"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41a

    .line 1036
    sget v3, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v3, :cond_40e

    .line 1037
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1040
    const/16 v19, 0x0

    .line 1041
    .local v19, minVers:I
    const/16 v18, 0x0

    .line 1042
    .local v18, minCode:Ljava/lang/String;
    const/16 v35, 0x0

    .line 1043
    .local v35, targetVers:I
    const/16 v34, 0x0

    .line 1045
    .local v34, targetCode:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v37

    .line 1047
    .local v37, val:Landroid/util/TypedValue;
    if-eqz v37, :cond_2d8

    .line 1048
    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_33e

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_33e

    .line 1049
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v34, v18

    .line 1056
    :cond_2d8
    :goto_2d8
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v37

    .line 1058
    if-eqz v37, :cond_2f8

    .line 1059
    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_347

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_347

    .line 1060
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v34, v18

    .line 1067
    :cond_2f8
    :goto_2f8
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1069
    if-eqz v18, :cond_36d

    .line 1070
    sget-object v3, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a6

    .line 1071
    sget-object v3, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    if-eqz v3, :cond_34e

    .line 1072
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current platform is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v3

    .line 1078
    :goto_335
    const/16 v3, -0xc

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1079
    const/4 v4, 0x0

    goto/16 :goto_29

    .line 1052
    :cond_33e
    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v19, v0

    move/from16 v35, v19

    goto :goto_2d8

    .line 1063
    :cond_347
    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v35, v0

    goto :goto_2f8

    .line 1075
    :cond_34e
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but this is a release platform."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v3

    goto :goto_335

    .line 1081
    :cond_36d
    sget v3, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move/from16 v0, v19

    if-le v0, v3, :cond_3a6

    .line 1082
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires newer sdk version #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current version is #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v3

    .line 1084
    const/16 v3, -0xc

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1085
    const/4 v4, 0x0

    goto/16 :goto_29

    .line 1088
    :cond_3a6
    if-eqz v34, :cond_413

    .line 1089
    sget-object v3, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_408

    .line 1090
    sget-object v3, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    if-eqz v3, :cond_3e9

    .line 1091
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current platform is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v3

    .line 1097
    :goto_3e0
    const/16 v3, -0xc

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1098
    const/4 v4, 0x0

    goto/16 :goto_29

    .line 1094
    :cond_3e9
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but this is a release platform."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v3

    goto :goto_3e0

    .line 1101
    :cond_408
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v5, 0x2710

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1108
    .end local v18           #minCode:Ljava/lang/String;
    .end local v19           #minVers:I
    .end local v34           #targetCode:Ljava/lang/String;
    .end local v35           #targetVers:I
    .end local v37           #val:Landroid/util/TypedValue;
    :cond_40e
    :goto_40e
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1104
    .restart local v18       #minCode:Ljava/lang/String;
    .restart local v19       #minVers:I
    .restart local v34       #targetCode:Ljava/lang/String;
    .restart local v35       #targetVers:I
    .restart local v37       #val:Landroid/util/TypedValue;
    :cond_413
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v35

    iput v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_40e

    .line 1110
    .end local v18           #minCode:Ljava/lang/String;
    .end local v19           #minVers:I
    .end local v34           #targetCode:Ljava/lang/String;
    .end local v35           #targetVers:I
    .end local v37           #val:Landroid/util/TypedValue;
    :cond_41a
    const-string/jumbo v3, "supports-screens"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48e

    .line 1111
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1114
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 1117
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 1120
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1126
    const/4 v3, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v31

    .line 1129
    const/4 v3, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v30

    .line 1132
    const/4 v3, 0x3

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v29

    .line 1135
    const/4 v3, 0x5

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v32

    .line 1138
    const/4 v3, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v26

    .line 1141
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 1145
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1147
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1149
    :cond_48e
    const-string/jumbo v3, "protected-broadcast"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d4

    .line 1150
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1155
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1158
    .restart local v20       #name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1160
    if-eqz v20, :cond_4cf

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_4cf

    .line 1161
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v3, :cond_4bc

    .line 1162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 1164
    :cond_4bc
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4cf

    .line 1165
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_4cf
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1171
    .end local v20           #name:Ljava/lang/String;
    :cond_4d4
    const-string v3, "instrumentation"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4ef

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1172
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v3

    if-nez v3, :cond_f3

    .line 1173
    const/4 v4, 0x0

    goto/16 :goto_29

    .line 1176
    :cond_4ef
    const-string/jumbo v3, "original-package"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_532

    .line 1177
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1180
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 1182
    .local v23, orig:Ljava/lang/String;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52a

    .line 1183
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v3, :cond_523

    .line 1184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 1185
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 1187
    :cond_523
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_52a
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1192
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1194
    .end local v23           #orig:Ljava/lang/String;
    :cond_532
    const-string v3, "adopt-permissions"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_568

    .line 1195
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1198
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 1201
    .restart local v20       #name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1203
    if-eqz v20, :cond_563

    .line 1204
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v3, :cond_55c

    .line 1205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 1207
    :cond_55c
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    :cond_563
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1212
    .end local v20           #name:Ljava/lang/String;
    :cond_568
    const-string/jumbo v3, "uses-gl-texture"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_578

    .line 1214
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1217
    :cond_578
    const-string v3, "compatible-screens"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_587

    .line 1219
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1222
    :cond_587
    const-string v3, "eat-comment"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_596

    .line 1224
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1234
    :cond_596
    sget-boolean v3, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v3, :cond_5d7

    .line 1235
    const-string v3, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <manifest>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :goto_5d2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f3

    .line 1239
    :cond_5d7
    const-string v3, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <manifest>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mArchiveSourcePath"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d2

    .line 1248
    .end local v33           #tagName:Ljava/lang/String;
    :cond_60f
    if-nez v15, :cond_624

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_624

    .line 1249
    const/4 v3, 0x0

    const-string v5, "<manifest> does not contain an <application> or <instrumentation>"

    aput-object v5, p4, v3

    .line 1250
    const/16 v3, -0x6d

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1253
    :cond_624
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v10, v3

    .line 1254
    .local v10, NP:I
    const/16 v16, 0x0

    .line 1255
    .local v16, implicitPerms:Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .local v17, ip:I
    :goto_62b
    move/from16 v0, v17

    if-ge v0, v10, :cond_63d

    .line 1256
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v22, v3, v17

    .line 1258
    .local v22, npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v22

    iget v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v3, v5, :cond_6b5

    .line 1273
    .end local v22           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_63d
    if-eqz v16, :cond_648

    .line 1274
    const-string v3, "PackageParser"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_648
    if-ltz v31, :cond_653

    if-lez v31, :cond_65b

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_65b

    .line 1280
    :cond_653
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1282
    :cond_65b
    if-eqz v30, :cond_665

    .line 1283
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1285
    :cond_665
    if-ltz v29, :cond_670

    if-lez v29, :cond_678

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_678

    .line 1288
    :cond_670
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1290
    :cond_678
    if-ltz v32, :cond_684

    if-lez v32, :cond_68d

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x9

    if-lt v3, v5, :cond_68d

    .line 1293
    :cond_684
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x8

    or-int/2addr v5, v6

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1295
    :cond_68d
    if-ltz v26, :cond_698

    if-lez v26, :cond_6a0

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_6a0

    .line 1298
    :cond_698
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1300
    :cond_6a0
    if-ltz v11, :cond_6ab

    if-lez v11, :cond_29

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_29

    .line 1303
    :cond_6ab
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    goto/16 :goto_29

    .line 1261
    .restart local v22       #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_6b5
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6ec

    .line 1262
    if-nez v16, :cond_6f0

    .line 1263
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #implicitPerms:Ljava/lang/StringBuilder;
    const/16 v3, 0x80

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1264
    .restart local v16       #implicitPerms:Ljava/lang/StringBuilder;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-string v3, ": compat added "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :goto_6da
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_6ec
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_62b

    .line 1267
    :cond_6f0
    const/16 v3, 0x20

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6da
.end method

.method private parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z
    .registers 18
    .parameter "owner"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "tag"
    .parameter "sa"
    .parameter "nameRes"
    .parameter "labelRes"
    .parameter "iconRes"
    .parameter "logoRes"

    .prologue
    .line 1917
    const/4 v5, 0x0

    invoke-virtual {p5, p6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 1918
    .local v3, name:Ljava/lang/String;
    if-nez v3, :cond_1f

    .line 1919
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not specify android:name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p3, v5

    .line 1920
    const/4 v5, 0x0

    .line 1947
    :goto_1e
    return v5

    .line 1923
    :cond_1f
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v3, p3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 1925
    iget-object v5, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v5, :cond_2f

    .line 1926
    const/4 v5, 0x0

    goto :goto_1e

    .line 1929
    :cond_2f
    const/4 v5, 0x0

    move/from16 v0, p8

    invoke-virtual {p5, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1930
    .local v1, iconVal:I
    if-eqz v1, :cond_3d

    .line 1931
    iput v1, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 1932
    const/4 v5, 0x0

    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1935
    :cond_3d
    const/4 v5, 0x0

    move/from16 v0, p9

    invoke-virtual {p5, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1936
    .local v2, logoVal:I
    if-eqz v2, :cond_48

    .line 1937
    iput v2, p2, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 1940
    :cond_48
    invoke-virtual {p5, p7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 1941
    .local v4, v:Landroid/util/TypedValue;
    if-eqz v4, :cond_5a

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    iput v5, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v5, :cond_5a

    .line 1942
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1945
    :cond_5a
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1947
    const/4 v5, 0x1

    goto :goto_1e
.end method

.method private static parsePackageLite(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$PackageLite;
    .registers 17
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 787
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, type:I
    const/4 v9, 0x2

    if-eq v6, v9, :cond_a

    const/4 v9, 0x1

    if-ne v6, v9, :cond_0

    .line 791
    :cond_a
    const/4 v9, 0x2

    if-eq v6, v9, :cond_14

    .line 792
    const/4 v9, 0x0

    const-string v10, "No start tag found"

    aput-object v10, p4, v9

    .line 793
    const/4 v9, 0x0

    .line 840
    :goto_13
    return-object v9

    .line 797
    :cond_14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "manifest"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    .line 798
    const/4 v9, 0x0

    const-string v10, "No <manifest> tag"

    aput-object v10, p4, v9

    .line 799
    const/4 v9, 0x0

    goto :goto_13

    .line 801
    :cond_28
    const/4 v9, 0x0

    const-string/jumbo v10, "package"

    invoke-interface {p2, v9, v10}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 802
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_38

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3f

    .line 803
    :cond_38
    const/4 v9, 0x0

    const-string v10, "<manifest> does not specify package"

    aput-object v10, p4, v9

    .line 804
    const/4 v9, 0x0

    goto :goto_13

    .line 806
    :cond_3f
    const/4 v9, 0x1

    invoke-static {v4, v9}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, nameError:Ljava/lang/String;
    if-eqz v3, :cond_79

    const-string v9, "android"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_79

    const-string/jumbo v9, "touchwiz"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_79

    .line 808
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<manifest> specifies bad package name \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, p4, v9

    .line 810
    const/4 v9, 0x0

    goto :goto_13

    .line 812
    :cond_79
    const/4 v2, -0x1

    .line 813
    .local v2, installLocation:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7b
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    if-ge v1, v9, :cond_92

    .line 814
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, attr:Ljava/lang/String;
    const-string v9, "installLocation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 816
    const/4 v9, -0x1

    invoke-interface {p2, v1, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v2

    .line 823
    .end local v0           #attr:Ljava/lang/String;
    :cond_92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    .line 825
    .local v5, searchDepth:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 827
    .local v8, verifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_9d
    :goto_9d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v9, 0x1

    if-eq v6, v9, :cond_d3

    const/4 v9, 0x3

    if-ne v6, v9, :cond_ad

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-lt v9, v5, :cond_d3

    .line 828
    :cond_ad
    const/4 v9, 0x3

    if-eq v6, v9, :cond_9d

    const/4 v9, 0x4

    if-eq v6, v9, :cond_9d

    .line 832
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ne v9, v5, :cond_9d

    const-string/jumbo v9, "package-verifier"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 833
    invoke-static/range {p0 .. p4}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/VerifierInfo;

    move-result-object v7

    .line 834
    .local v7, verifier:Landroid/content/pm/VerifierInfo;
    if-eqz v7, :cond_9d

    .line 835
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    .line 813
    .end local v5           #searchDepth:I
    .end local v7           #verifier:Landroid/content/pm/VerifierInfo;
    .end local v8           #verifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v0       #attr:Ljava/lang/String;
    :cond_d0
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 840
    .end local v0           #attr:Ljava/lang/String;
    .restart local v5       #searchDepth:I
    .restart local v8       #verifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_d3
    new-instance v9, Landroid/content/pm/PackageParser$PackageLite;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2, v8}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;ILjava/util/List;)V

    goto/16 :goto_13
.end method

.method public static parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 34
    .parameter "packageFilePath"
    .parameter "flags"

    .prologue
    .line 676
    const/16 v23, 0x0

    .line 680
    .local v23, assmgr:Landroid/content/res/AssetManager;
    :try_start_2
    new-instance v5, Landroid/content/res/AssetManager;

    invoke-direct {v5}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_89

    .line 681
    .end local v23           #assmgr:Landroid/content/res/AssetManager;
    .local v5, assmgr:Landroid/content/res/AssetManager;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :try_start_1d
    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v5 .. v22}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 684
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v25

    .line 685
    .local v25, cookie:I
    if-nez v25, :cond_2d

    .line 686
    const/16 v29, 0x0

    .line 717
    .end local v25           #cookie:I
    :cond_2c
    :goto_2c
    return-object v29

    .line 689
    .restart local v25       #cookie:I
    :cond_2d
    new-instance v28, Landroid/util/DisplayMetrics;

    invoke-direct/range {v28 .. v28}, Landroid/util/DisplayMetrics;-><init>()V

    .line 690
    .local v28, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {v28 .. v28}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 691
    new-instance v31, Landroid/content/res/Resources;

    const/4 v6, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-direct {v0, v5, v1, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 692
    .local v31, res:Landroid/content/res/Resources;
    const-string v6, "AndroidManifest.xml"

    move/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_46} :catch_e7

    move-result-object v30

    .line 700
    .local v30, parser:Landroid/content/res/XmlResourceParser;
    move-object/from16 v24, v30

    .line 701
    .local v24, attrs:Landroid/util/AttributeSet;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v27, v0

    .line 702
    .local v27, errors:[Ljava/lang/String;
    const/16 v29, 0x0

    .line 704
    .local v29, packageLite:Landroid/content/pm/PackageParser$PackageLite;
    :try_start_50
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v24

    move/from16 v3, p1

    move-object/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackageLite(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$PackageLite;
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_db
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5d} :catch_b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_5d} :catch_c6

    move-result-object v29

    .line 710
    if-eqz v30, :cond_63

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    .line 711
    :cond_63
    if-eqz v5, :cond_68

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 713
    :cond_68
    :goto_68
    if-nez v29, :cond_2c

    .line 714
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parsePackageLite error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v27, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/16 v29, 0x0

    goto :goto_2c

    .line 693
    .end local v5           #assmgr:Landroid/content/res/AssetManager;
    .end local v24           #attrs:Landroid/util/AttributeSet;
    .end local v25           #cookie:I
    .end local v27           #errors:[Ljava/lang/String;
    .end local v28           #metrics:Landroid/util/DisplayMetrics;
    .end local v29           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .end local v30           #parser:Landroid/content/res/XmlResourceParser;
    .end local v31           #res:Landroid/content/res/Resources;
    .restart local v23       #assmgr:Landroid/content/res/AssetManager;
    :catch_89
    move-exception v26

    move-object/from16 v5, v23

    .line 694
    .end local v23           #assmgr:Landroid/content/res/AssetManager;
    .restart local v5       #assmgr:Landroid/content/res/AssetManager;
    .local v26, e:Ljava/lang/Exception;
    :goto_8c
    if-eqz v5, :cond_91

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 695
    :cond_91
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-static {v6, v7, v0}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    const/16 v29, 0x0

    goto/16 :goto_2c

    .line 705
    .end local v26           #e:Ljava/lang/Exception;
    .restart local v24       #attrs:Landroid/util/AttributeSet;
    .restart local v25       #cookie:I
    .restart local v27       #errors:[Ljava/lang/String;
    .restart local v28       #metrics:Landroid/util/DisplayMetrics;
    .restart local v29       #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .restart local v30       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v31       #res:Landroid/content/res/Resources;
    :catch_b1
    move-exception v26

    .line 706
    .local v26, e:Ljava/io/IOException;
    :try_start_b2
    const-string v6, "PackageParser"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v6, v0, v1}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_db

    .line 710
    if-eqz v30, :cond_c0

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    .line 711
    :cond_c0
    if-eqz v5, :cond_68

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    goto :goto_68

    .line 707
    .end local v26           #e:Ljava/io/IOException;
    :catch_c6
    move-exception v26

    .line 708
    .local v26, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c7
    const-string v6, "PackageParser"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v6, v0, v1}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d0
    .catchall {:try_start_c7 .. :try_end_d0} :catchall_db

    .line 710
    if-eqz v30, :cond_d5

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    .line 711
    :cond_d5
    if-eqz v5, :cond_68

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    goto :goto_68

    .line 710
    .end local v26           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_db
    move-exception v6

    if-eqz v30, :cond_e1

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    .line 711
    :cond_e1
    if-eqz v5, :cond_e6

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    :cond_e6
    throw v6

    .line 693
    .end local v24           #attrs:Landroid/util/AttributeSet;
    .end local v25           #cookie:I
    .end local v27           #errors:[Ljava/lang/String;
    .end local v28           #metrics:Landroid/util/DisplayMetrics;
    .end local v29           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .end local v30           #parser:Landroid/content/res/XmlResourceParser;
    .end local v31           #res:Landroid/content/res/Resources;
    :catch_e7
    move-exception v26

    goto :goto_8c
.end method

.method private static parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 752
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    if-eq v2, v4, :cond_c

    if-ne v2, v7, :cond_4

    .line 756
    :cond_c
    if-eq v2, v4, :cond_13

    .line 757
    const-string v4, "No start tag found"

    aput-object v4, p3, v6

    .line 778
    :goto_12
    return-object v3

    .line 762
    :cond_13
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 763
    const-string v4, "No <manifest> tag"

    aput-object v4, p3, v6

    goto :goto_12

    .line 766
    :cond_25
    const-string/jumbo v4, "package"

    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, pkgName:Ljava/lang/String;
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_39

    .line 768
    :cond_34
    const-string v4, "<manifest> does not specify package"

    aput-object v4, p3, v6

    goto :goto_12

    .line 771
    :cond_39
    invoke-static {v1, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, nameError:Ljava/lang/String;
    if-eqz v0, :cond_70

    const-string v4, "android"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    const-string/jumbo v4, "touchwiz"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 773
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<manifest> specifies bad package name \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    goto :goto_12

    .line 778
    :cond_70
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_12
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .registers 21
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1431
    new-instance v13, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1433
    .local v13, perm:Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1436
    .local v7, sa:Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v6, "<permission>"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x6

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1442
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1443
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1444
    const/4 v13, 0x0

    .line 1479
    .end local v13           #perm:Landroid/content/pm/PackageParser$Permission;
    :goto_2c
    return-object v13

    .line 1449
    .restart local v13       #perm:Landroid/content/pm/PackageParser$Permission;
    :cond_2d
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x4

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1451
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v2, :cond_48

    .line 1452
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1455
    :cond_48
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 1459
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1463
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1465
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_71

    .line 1466
    const/4 v2, 0x0

    const-string v3, "<permission> does not specify protectionLevel"

    aput-object v3, p5, v2

    .line 1467
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1468
    const/4 v13, 0x0

    goto :goto_2c

    .line 1471
    :cond_71
    const-string v12, "<permission>"

    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 1473
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1474
    const/4 v13, 0x0

    goto :goto_2c

    .line 1477
    :cond_88
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .registers 21
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1395
    new-instance v13, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1397
    .local v13, perm:Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1400
    .local v7, sa:Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string v6, "<permission-group>"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x4

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1406
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1407
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1408
    const/4 v13, 0x0

    .line 1425
    .end local v13           #perm:Landroid/content/pm/PackageParser$PermissionGroup;
    :goto_2c
    return-object v13

    .line 1411
    .restart local v13       #perm:Landroid/content/pm/PackageParser$PermissionGroup;
    :cond_2d
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 1415
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1417
    const-string v12, "<permission-group>"

    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 1419
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1420
    const/4 v13, 0x0

    goto :goto_2c

    .line 1423
    :cond_51
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .registers 22
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1485
    new-instance v13, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1487
    .local v13, perm:Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1490
    .local v7, sa:Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v6, "<permission-tree>"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1496
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1497
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1498
    const/4 v13, 0x0

    .line 1526
    .end local v13           #perm:Landroid/content/pm/PackageParser$Permission;
    :goto_2f
    return-object v13

    .line 1501
    .restart local v13       #perm:Landroid/content/pm/PackageParser$Permission;
    :cond_30
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1503
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 1504
    .local v15, index:I
    if-lez v15, :cond_4b

    .line 1505
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 1507
    :cond_4b
    if-gez v15, :cond_6f

    .line 1508
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<permission-tree> name has less than three segments: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p5, v2

    .line 1510
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1511
    const/4 v13, 0x0

    goto :goto_2f

    .line 1514
    :cond_6f
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 1515
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1516
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 1518
    const-string v12, "<permission-tree>"

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 1520
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1521
    const/4 v13, 0x0

    goto :goto_2f

    .line 1524
    :cond_96
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .registers 24
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2348
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 2351
    .local v15, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_33

    .line 2352
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xf

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v10, 0x8

    const/16 v11, 0xe

    const/4 v12, 0x6

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2361
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v3, "<provider>"

    iput-object v3, v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 2364
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v15, v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 2365
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2367
    new-instance v6, Landroid/content/pm/PackageParser$Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ProviderInfo;

    invoke-direct {v3}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v6, v2, v3}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 2368
    .local v6, p:Landroid/content/pm/PackageParser$Provider;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_59

    .line 2369
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 2370
    const/4 v6, 0x0

    .line 2441
    .end local v6           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_58
    :goto_58
    return-object v6

    .line 2373
    .restart local v6       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_59
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 2376
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 2379
    .local v13, cpname:Ljava/lang/String;
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 2383
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 2385
    .local v14, permission:Ljava/lang/String;
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2387
    .local v16, str:Ljava/lang/String;
    if-nez v16, :cond_85

    .line 2388
    move-object/from16 v16, v14

    .line 2390
    :cond_85
    if-nez v16, :cond_e8

    .line 2391
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 2396
    :goto_91
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2398
    if-nez v16, :cond_9b

    .line 2399
    move-object/from16 v16, v14

    .line 2401
    :cond_9b
    if-nez v16, :cond_fd

    .line 2402
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 2408
    :goto_a7
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 2412
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 2416
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 2420
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 2422
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_112

    .line 2425
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_112

    .line 2426
    const/4 v2, 0x0

    const-string v3, "Heavy-weight applications can not have providers in main process"

    aput-object v3, p6, v2

    .line 2427
    const/4 v6, 0x0

    goto/16 :goto_58

    .line 2393
    :cond_e8
    iget-object v3, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_fb

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_f8
    iput-object v2, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_91

    :cond_fb
    const/4 v2, 0x0

    goto :goto_f8

    .line 2404
    :cond_fd
    iget-object v3, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_110

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_10d
    iput-object v2, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_a7

    :cond_110
    const/4 v2, 0x0

    goto :goto_10d

    .line 2431
    :cond_112
    if-nez v13, :cond_11c

    .line 2432
    const/4 v2, 0x0

    const-string v3, "<provider> does not incude authorities attribute"

    aput-object v3, p6, v2

    .line 2433
    const/4 v6, 0x0

    goto/16 :goto_58

    .line 2435
    :cond_11c
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    .line 2437
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 2438
    const/4 v6, 0x0

    goto/16 :goto_58
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .registers 26
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outInfo"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2448
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 2451
    .local v11, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, type:I
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_385

    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_18

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v11, :cond_385

    .line 2453
    :cond_18
    const/4 v2, 0x3

    move/from16 v0, v18

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    move/from16 v0, v18

    if-eq v0, v2, :cond_4

    .line 2457
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2458
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_4

    .line 2460
    const/4 v2, 0x0

    .line 2641
    :goto_48
    return v2

    .line 2463
    :cond_49
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "grant-uri-permission"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_159

    .line 2464
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 2467
    .local v16, sa:Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    .line 2469
    .local v12, pa:Landroid/os/PatternMatcher;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 2471
    .local v17, str:Ljava/lang/String;
    if-eqz v17, :cond_72

    .line 2472
    new-instance v12, Landroid/os/PatternMatcher;

    .end local v12           #pa:Landroid/os/PatternMatcher;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2475
    .restart local v12       #pa:Landroid/os/PatternMatcher;
    :cond_72
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 2477
    if-eqz v17, :cond_84

    .line 2478
    new-instance v12, Landroid/os/PatternMatcher;

    .end local v12           #pa:Landroid/os/PatternMatcher;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2481
    .restart local v12       #pa:Landroid/os/PatternMatcher;
    :cond_84
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 2483
    if-eqz v17, :cond_96

    .line 2484
    new-instance v12, Landroid/os/PatternMatcher;

    .end local v12           #pa:Landroid/os/PatternMatcher;
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2487
    .restart local v12       #pa:Landroid/os/PatternMatcher;
    :cond_96
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 2489
    if-eqz v12, :cond_e0

    .line 2490
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v2, :cond_c1

    .line 2491
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/PatternMatcher;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 2492
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    .line 2500
    :goto_b5
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 2519
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2494
    :cond_c1
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v8, v2

    .line 2495
    .local v8, N:I
    add-int/lit8 v2, v8, 0x1

    new-array v10, v2, [Landroid/os/PatternMatcher;

    .line 2496
    .local v10, newp:[Landroid/os/PatternMatcher;
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v10, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2497
    aput-object v12, v10, v8

    .line 2498
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v10, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    goto :goto_b5

    .line 2503
    .end local v8           #N:I
    .end local v10           #newp:[Landroid/os/PatternMatcher;
    :cond_e0
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_121

    .line 2504
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <path-permission>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :goto_11c
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2508
    :cond_121
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <path-permission>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mArchiveSourcePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    .line 2521
    .end local v12           #pa:Landroid/os/PatternMatcher;
    .end local v16           #sa:Landroid/content/res/TypedArray;
    .end local v17           #str:Ljava/lang/String;
    :cond_159
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "path-permission"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30c

    .line 2522
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 2525
    .restart local v16       #sa:Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    .line 2527
    .local v12, pa:Landroid/content/pm/PathPermission;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 2529
    .local v14, permission:Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 2531
    .local v15, readPermission:Ljava/lang/String;
    if-nez v15, :cond_184

    .line 2532
    move-object v15, v14

    .line 2534
    :cond_184
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    .line 2536
    .local v19, writePermission:Ljava/lang/String;
    if-nez v19, :cond_190

    .line 2537
    move-object/from16 v19, v14

    .line 2540
    :cond_190
    const/4 v9, 0x0

    .line 2541
    .local v9, havePerm:Z
    if-eqz v15, :cond_198

    .line 2542
    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    .line 2543
    const/4 v9, 0x1

    .line 2545
    :cond_198
    if-eqz v19, :cond_19f

    .line 2546
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v19

    .line 2547
    const/4 v9, 0x1

    .line 2550
    :cond_19f
    if-nez v9, :cond_21a

    .line 2552
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_1e2

    .line 2553
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :goto_1dd
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2557
    :cond_1e2
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mArchiveSourcePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1dd

    .line 2569
    :cond_21a
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 2571
    .local v13, path:Ljava/lang/String;
    if-eqz v13, :cond_22c

    .line 2572
    new-instance v12, Landroid/content/pm/PathPermission;

    .end local v12           #pa:Landroid/content/pm/PathPermission;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v2, v15, v0}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2576
    .restart local v12       #pa:Landroid/content/pm/PathPermission;
    :cond_22c
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 2578
    if-eqz v13, :cond_23e

    .line 2579
    new-instance v12, Landroid/content/pm/PathPermission;

    .end local v12           #pa:Landroid/content/pm/PathPermission;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v2, v15, v0}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2583
    .restart local v12       #pa:Landroid/content/pm/PathPermission;
    :cond_23e
    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 2585
    if-eqz v13, :cond_250

    .line 2586
    new-instance v12, Landroid/content/pm/PathPermission;

    .end local v12           #pa:Landroid/content/pm/PathPermission;
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v2, v15, v0}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2590
    .restart local v12       #pa:Landroid/content/pm/PathPermission;
    :cond_250
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 2592
    if-eqz v12, :cond_293

    .line 2593
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v2, :cond_274

    .line 2594
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/pm/PathPermission;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 2595
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    .line 2620
    :goto_26f
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2597
    :cond_274
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v8, v2

    .line 2598
    .restart local v8       #N:I
    add-int/lit8 v2, v8, 0x1

    new-array v10, v2, [Landroid/content/pm/PathPermission;

    .line 2599
    .local v10, newp:[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v10, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2600
    aput-object v12, v10, v8

    .line 2601
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v10, v2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_26f

    .line 2605
    .end local v8           #N:I
    .end local v10           #newp:[Landroid/content/pm/PathPermission;
    :cond_293
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_2d4

    .line 2606
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :goto_2cf
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2610
    :cond_2d4
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mArchiveSourcePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cf

    .line 2624
    .end local v9           #havePerm:Z
    .end local v12           #pa:Landroid/content/pm/PathPermission;
    .end local v13           #path:Ljava/lang/String;
    .end local v14           #permission:Ljava/lang/String;
    .end local v15           #readPermission:Ljava/lang/String;
    .end local v16           #sa:Landroid/content/res/TypedArray;
    .end local v19           #writePermission:Ljava/lang/String;
    :cond_30c
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_34d

    .line 2625
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <provider>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :goto_348
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2629
    :cond_34d
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <provider>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mArchiveSourcePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_348

    .line 2641
    :cond_385
    const/4 v2, 0x1

    goto/16 :goto_48
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .registers 27
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2647
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 2650
    .local v16, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_31

    .line 2651
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v10, 0x6

    const/4 v11, 0x7

    const/4 v12, 0x4

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2660
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v3, "<service>"

    iput-object v3, v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 2663
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v16

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 2664
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2666
    new-instance v15, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ServiceInfo;

    invoke-direct {v3}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v15, v2, v3}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 2667
    .local v15, s:Landroid/content/pm/PackageParser$Service;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_59

    .line 2668
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 2669
    const/4 v15, 0x0

    .line 2750
    .end local v15           #s:Landroid/content/pm/PackageParser$Service;
    :cond_58
    :goto_58
    return-object v15

    .line 2672
    .restart local v15       #s:Landroid/content/pm/PackageParser$Service;
    :cond_59
    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    .line 2674
    .local v17, setExported:Z
    if-eqz v17, :cond_6e

    .line 2675
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 2679
    :cond_6e
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 2681
    .local v18, str:Ljava/lang/String;
    if-nez v18, :cond_b9

    .line 2682
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 2687
    :goto_82
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 2688
    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 2691
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 2694
    :cond_9a
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 2696
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_ce

    .line 2699
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_ce

    .line 2700
    const/4 v2, 0x0

    const-string v3, "Heavy-weight applications can not have services in main process"

    aput-object v3, p6, v2

    .line 2701
    const/4 v15, 0x0

    goto :goto_58

    .line 2684
    :cond_b9
    iget-object v3, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_cc

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_c9
    iput-object v2, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_82

    :cond_cc
    const/4 v2, 0x0

    goto :goto_c9

    .line 2705
    :cond_ce
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 2708
    .local v14, outerDepth:I
    :cond_d2
    :goto_d2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, type:I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_1ba

    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_e6

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v14, :cond_1ba

    .line 2710
    :cond_e6
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_d2

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_d2

    .line 2714
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 2715
    new-instance v7, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v7, v15}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 2716
    .local v7, intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_117

    .line 2717
    const/4 v15, 0x0

    goto/16 :goto_58

    .line 2720
    :cond_117
    iget-object v2, v15, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 2721
    .end local v7           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_11d
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_141

    .line 2722
    iget-object v12, v15, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v15, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_d2

    .line 2724
    const/4 v15, 0x0

    goto/16 :goto_58

    .line 2728
    :cond_141
    sget-boolean v2, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v2, :cond_182

    .line 2729
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <service>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :goto_17d
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d2

    .line 2733
    :cond_182
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <service>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mArchiveSourcePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17d

    .line 2746
    :cond_1ba
    if-nez v17, :cond_58

    .line 2747
    iget-object v3, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v15, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1cb

    const/4 v2, 0x1

    :goto_1c7
    iput-boolean v2, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    goto/16 :goto_58

    :cond_1cb
    const/4 v2, 0x0

    goto :goto_1c7
.end method

.method private static parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/VerifierInfo;
    .registers 16
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2867
    sget-object v8, Lcom/android/internal/R$styleable;->AndroidManifestPackageVerifier:[I

    invoke-virtual {p0, p2, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2870
    .local v7, sa:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2873
    .local v5, packageName:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2876
    .local v2, encodedPublicKey:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2878
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_25

    .line 2879
    :cond_1b
    const-string v8, "PackageParser"

    const-string/jumbo v9, "verifier package name was null; skipping"

    invoke-static {v8, v9}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    const/4 v8, 0x0

    .line 2918
    :goto_24
    return-object v8

    .line 2881
    :cond_25
    if-nez v2, :cond_46

    .line 2882
    const-string v8, "PackageParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "verifier "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " public key was null; skipping"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :cond_46
    const/4 v8, 0x0

    :try_start_47
    invoke-static {v2, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2888
    .local v1, encoded:[B
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_50} :catch_6a

    .line 2896
    .local v4, keySpec:Ljava/security/spec/EncodedKeySpec;
    :try_start_50
    const-string v8, "RSA"

    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 2897
    .local v3, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    .line 2898
    .local v6, publicKey:Ljava/security/PublicKey;
    new-instance v8, Landroid/content/pm/VerifierInfo;

    invoke-direct {v8, v5, v6}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V
    :try_end_5f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_50 .. :try_end_5f} :catch_60
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_50 .. :try_end_5f} :catch_8b

    goto :goto_24

    .line 2899
    .end local v3           #keyFactory:Ljava/security/KeyFactory;
    .end local v6           #publicKey:Ljava/security/PublicKey;
    :catch_60
    move-exception v0

    .line 2900
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v8, "PackageParser"

    const-string v9, "Could not parse public key because RSA isn\'t included in build"

    invoke-static {v8, v9}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    const/4 v8, 0x0

    goto :goto_24

    .line 2889
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v1           #encoded:[B
    .end local v4           #keySpec:Ljava/security/spec/EncodedKeySpec;
    :catch_6a
    move-exception v0

    .line 2890
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "PackageParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse verifier "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " public key; invalid Base64"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    const/4 v8, 0x0

    goto :goto_24

    .line 2902
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #encoded:[B
    .restart local v4       #keySpec:Ljava/security/spec/EncodedKeySpec;
    :catch_8b
    move-exception v8

    .line 2908
    :try_start_8c
    const-string v8, "DSA"

    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 2909
    .restart local v3       #keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    .line 2910
    .restart local v6       #publicKey:Ljava/security/PublicKey;
    new-instance v8, Landroid/content/pm/VerifierInfo;

    invoke-direct {v8, v5, v6}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V
    :try_end_9b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8c .. :try_end_9b} :catch_9c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_8c .. :try_end_9b} :catch_a7

    goto :goto_24

    .line 2911
    .end local v3           #keyFactory:Ljava/security/KeyFactory;
    .end local v6           #publicKey:Ljava/security/PublicKey;
    :catch_9c
    move-exception v0

    .line 2912
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v8, "PackageParser"

    const-string v9, "Could not parse public key because DSA isn\'t included in build"

    invoke-static {v8, v9}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    const/4 v8, 0x0

    goto/16 :goto_24

    .line 2914
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_a7
    move-exception v8

    .line 2918
    const/4 v8, 0x0

    goto/16 :goto_24
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .registers 1
    .parameter "compatibilityModeEnabled"

    .prologue
    .line 3632
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 3633
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .registers 5
    .parameter "str"

    .prologue
    .line 847
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 848
    .local v0, N:I
    new-array v2, v0, [B

    .line 849
    .local v2, sig:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 850
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 852
    :cond_13
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v3
.end method

.method private static validateName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .parameter "name"
    .parameter "requiresSeparator"

    .prologue
    .line 721
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 722
    .local v0, N:I
    const/4 v3, 0x0

    .line 723
    .local v3, hasSep:Z
    const/4 v2, 0x1

    .line 724
    .local v2, front:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, v0, :cond_50

    .line 725
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 726
    .local v1, c:C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_15

    const/16 v5, 0x7a

    if-le v1, v5, :cond_1d

    :cond_15
    const/16 v5, 0x41

    if-lt v1, v5, :cond_21

    const/16 v5, 0x5a

    if-gt v1, v5, :cond_21

    .line 727
    :cond_1d
    const/4 v2, 0x0

    .line 724
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 730
    :cond_21
    if-nez v2, :cond_2f

    .line 731
    const/16 v5, 0x30

    if-lt v1, v5, :cond_2b

    const/16 v5, 0x39

    if-le v1, v5, :cond_1e

    :cond_2b
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_1e

    .line 735
    :cond_2f
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_36

    .line 736
    const/4 v3, 0x1

    .line 737
    const/4 v2, 0x1

    .line 738
    goto :goto_1e

    .line 740
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 742
    .end local v1           #c:C
    :goto_4f
    return-object v5

    :cond_50
    if-nez v3, :cond_54

    if-nez p1, :cond_56

    :cond_54
    const/4 v5, 0x0

    goto :goto_4f

    :cond_56
    const-string/jumbo v5, "must have at least one \'.\' separator"

    goto :goto_4f
.end method


# virtual methods
.method public collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 24
    .parameter "pkg"
    .parameter "flags"

    .prologue
    .line 505
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 508
    const/16 v16, 0x0

    .line 509
    .local v16, readBuffer:[B
    sget-object v19, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v19

    .line 510
    :try_start_d
    sget-object v17, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 511
    .local v17, readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v17, :cond_1f

    .line 512
    const/16 v18, 0x0

    sput-object v18, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 513
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 515
    :cond_1f
    if-nez v16, :cond_32

    .line 516
    const/16 v18, 0x2000

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 517
    new-instance v17, Ljava/lang/ref/WeakReference;

    .end local v17           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 519
    .restart local v17       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_32
    monitor-exit v19
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_9b

    .line 522
    :try_start_33
    new-instance v11, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 524
    .local v11, jarFile:Ljava/util/jar/JarFile;
    const/4 v4, 0x0

    .line 526
    .local v4, certs:[Ljava/security/cert/Certificate;
    and-int/lit8 v18, p2, 0x1

    if-eqz v18, :cond_d4

    .line 531
    const-string v18, "AndroidManifest.xml"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v10

    .line 532
    .local v10, jarEntry:Ljava/util/jar/JarEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v10, v1}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 533
    if-nez v4, :cond_250

    .line 534
    sget-boolean v18, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v18, :cond_9e

    .line 535
    const-string v18, "PackageParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has no certificates at entry "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; ignoring!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_8d
    invoke-virtual {v11}, Ljava/util/jar/JarFile;->close()V

    .line 544
    const/16 v18, -0x67

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_98
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_33 .. :try_end_98} :catch_a6
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_98} :catch_16b
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_98} :catch_21d

    .line 545
    const/16 v18, 0x0

    .line 665
    .end local v4           #certs:[Ljava/security/cert/Certificate;
    .end local v10           #jarEntry:Ljava/util/jar/JarEntry;
    .end local v11           #jarFile:Ljava/util/jar/JarFile;
    :goto_9a
    return v18

    .line 519
    .end local v17           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :catchall_9b
    move-exception v18

    :try_start_9c
    monitor-exit v19
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v18

    .line 539
    .restart local v4       #certs:[Ljava/security/cert/Certificate;
    .restart local v10       #jarEntry:Ljava/util/jar/JarEntry;
    .restart local v11       #jarFile:Ljava/util/jar/JarFile;
    .restart local v17       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_9e
    :try_start_9e
    const-string v18, "PackageParser"

    const-string v19, "Package pkg.packageName has no certificates at entry jarEntry.getName(); ignoring!"

    invoke-static/range {v18 .. v19}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9e .. :try_end_a5} :catch_a6
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a5} :catch_16b
    .catch Ljava/lang/RuntimeException; {:try_start_9e .. :try_end_a5} :catch_21d

    goto :goto_8d

    .line 651
    .end local v4           #certs:[Ljava/security/cert/Certificate;
    .end local v10           #jarEntry:Ljava/util/jar/JarEntry;
    .end local v11           #jarFile:Ljava/util/jar/JarFile;
    :catch_a6
    move-exception v5

    .line 652
    .local v5, e:Ljava/security/cert/CertificateEncodingException;
    const-string v18, "PackageParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception reading "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    const/16 v18, -0x69

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 654
    const/16 v18, 0x0

    goto :goto_9a

    .line 560
    .end local v5           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v4       #certs:[Ljava/security/cert/Certificate;
    .restart local v11       #jarFile:Ljava/util/jar/JarFile;
    :cond_d4
    :try_start_d4
    invoke-virtual {v11}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 561
    .local v6, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    invoke-virtual {v11}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v14

    .line 562
    .local v14, manifest:Ljava/util/jar/Manifest;
    :cond_dc
    :goto_dc
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_250

    .line 563
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/jar/JarEntry;

    .line 564
    .local v12, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v12}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_dc

    .line 566
    invoke-virtual {v12}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 568
    .local v15, name:Ljava/lang/String;
    const-string v18, "META-INF/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_dc

    .line 571
    const-string v18, "AndroidManifest.xml"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_114

    .line 572
    invoke-virtual {v14, v15}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v3

    .line 573
    .local v3, attributes:Ljava/util/jar/Attributes;
    invoke-static {v3}, Landroid/content/pm/ManifestDigest;->fromAttributes(Ljava/util/jar/Attributes;)Landroid/content/pm/ManifestDigest;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 576
    .end local v3           #attributes:Ljava/util/jar/Attributes;
    :cond_114
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v12, v1}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v13

    .line 583
    .local v13, localCerts:[Ljava/security/cert/Certificate;
    if-nez v13, :cond_19a

    .line 584
    sget-boolean v18, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v18, :cond_163

    .line 585
    const-string v18, "PackageParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has no certificates at entry "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; ignoring!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_154
    invoke-virtual {v11}, Ljava/util/jar/JarFile;->close()V

    .line 594
    const/16 v18, -0x67

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 595
    const/16 v18, 0x0

    goto/16 :goto_9a

    .line 589
    :cond_163
    const-string v18, "PackageParser"

    const-string v19, "Package pkg.packageName has no certificates at entry je.getName; ignoring!"

    invoke-static/range {v18 .. v19}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_d4 .. :try_end_16a} :catch_a6
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_16a} :catch_16b
    .catch Ljava/lang/RuntimeException; {:try_start_d4 .. :try_end_16a} :catch_21d

    goto :goto_154

    .line 655
    .end local v4           #certs:[Ljava/security/cert/Certificate;
    .end local v6           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v11           #jarFile:Ljava/util/jar/JarFile;
    .end local v12           #je:Ljava/util/jar/JarEntry;
    .end local v13           #localCerts:[Ljava/security/cert/Certificate;
    .end local v14           #manifest:Ljava/util/jar/Manifest;
    .end local v15           #name:Ljava/lang/String;
    :catch_16b
    move-exception v5

    .line 656
    .local v5, e:Ljava/io/IOException;
    const-string v18, "PackageParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception reading "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    const/16 v18, -0x69

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 658
    const/16 v18, 0x0

    goto/16 :goto_9a

    .line 596
    .end local v5           #e:Ljava/io/IOException;
    .restart local v4       #certs:[Ljava/security/cert/Certificate;
    .restart local v6       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v11       #jarFile:Ljava/util/jar/JarFile;
    .restart local v12       #je:Ljava/util/jar/JarEntry;
    .restart local v13       #localCerts:[Ljava/security/cert/Certificate;
    .restart local v14       #manifest:Ljava/util/jar/Manifest;
    .restart local v15       #name:Ljava/lang/String;
    :cond_19a
    if-nez v4, :cond_19f

    .line 597
    move-object v4, v13

    goto/16 :goto_dc

    .line 600
    :cond_19f
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1a0
    :try_start_1a0
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_dc

    .line 601
    const/4 v7, 0x0

    .line 602
    .local v7, found:Z
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1a9
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_1bf

    .line 603
    aget-object v18, v4, v8

    if-eqz v18, :cond_212

    aget-object v18, v4, v8

    aget-object v19, v13, v9

    invoke-virtual/range {v18 .. v19}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_212

    .line 605
    const/4 v7, 0x1

    .line 609
    :cond_1bf
    if-eqz v7, :cond_1cd

    array-length v0, v4

    move/from16 v18, v0

    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_24c

    .line 610
    :cond_1cd
    sget-boolean v18, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v18, :cond_215

    .line 611
    const-string v18, "PackageParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has mismatched certificates at entry "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; ignoring!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_203
    invoke-virtual {v11}, Ljava/util/jar/JarFile;->close()V

    .line 620
    const/16 v18, -0x68

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 621
    const/16 v18, 0x0

    goto/16 :goto_9a

    .line 602
    :cond_212
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a9

    .line 615
    :cond_215
    const-string v18, "PackageParser"

    const-string v19, "Package pkg.packageName has mismatched certificates at entry je.getName; ignoring!"

    invoke-static/range {v18 .. v19}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1a0 .. :try_end_21c} :catch_a6
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_21c} :catch_16b
    .catch Ljava/lang/RuntimeException; {:try_start_1a0 .. :try_end_21c} :catch_21d

    goto :goto_203

    .line 659
    .end local v4           #certs:[Ljava/security/cert/Certificate;
    .end local v6           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v7           #found:Z
    .end local v8           #i:I
    .end local v9           #j:I
    .end local v11           #jarFile:Ljava/util/jar/JarFile;
    .end local v12           #je:Ljava/util/jar/JarEntry;
    .end local v13           #localCerts:[Ljava/security/cert/Certificate;
    .end local v14           #manifest:Ljava/util/jar/Manifest;
    .end local v15           #name:Ljava/lang/String;
    :catch_21d
    move-exception v5

    .line 660
    .local v5, e:Ljava/lang/RuntimeException;
    const-string v18, "PackageParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception reading "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    const/16 v18, -0x66

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 662
    const/16 v18, 0x0

    goto/16 :goto_9a

    .line 600
    .end local v5           #e:Ljava/lang/RuntimeException;
    .restart local v4       #certs:[Ljava/security/cert/Certificate;
    .restart local v6       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v7       #found:Z
    .restart local v8       #i:I
    .restart local v9       #j:I
    .restart local v11       #jarFile:Ljava/util/jar/JarFile;
    .restart local v12       #je:Ljava/util/jar/JarEntry;
    .restart local v13       #localCerts:[Ljava/security/cert/Certificate;
    .restart local v14       #manifest:Ljava/util/jar/Manifest;
    .restart local v15       #name:Ljava/lang/String;
    :cond_24c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1a0

    .line 627
    .end local v6           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v7           #found:Z
    .end local v8           #i:I
    .end local v9           #j:I
    .end local v12           #je:Ljava/util/jar/JarEntry;
    .end local v13           #localCerts:[Ljava/security/cert/Certificate;
    .end local v14           #manifest:Ljava/util/jar/Manifest;
    .end local v15           #name:Ljava/lang/String;
    :cond_250
    :try_start_250
    invoke-virtual {v11}, Ljava/util/jar/JarFile;->close()V

    .line 629
    sget-object v19, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v19
    :try_end_256
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_250 .. :try_end_256} :catch_a6
    .catch Ljava/io/IOException; {:try_start_250 .. :try_end_256} :catch_16b
    .catch Ljava/lang/RuntimeException; {:try_start_250 .. :try_end_256} :catch_21d

    .line 630
    :try_start_256
    sput-object v17, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 631
    monitor-exit v19
    :try_end_259
    .catchall {:try_start_256 .. :try_end_259} :catchall_289

    .line 633
    if-eqz v4, :cond_28c

    :try_start_25b
    array-length v0, v4

    move/from16 v18, v0

    if-lez v18, :cond_28c

    .line 634
    array-length v2, v4

    .line 635
    .local v2, N:I
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 636
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_271
    if-ge v8, v2, :cond_2c8

    .line 637
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/pm/Signature;

    aget-object v20, v4, v8

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v19, v18, v8
    :try_end_286
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_25b .. :try_end_286} :catch_a6
    .catch Ljava/io/IOException; {:try_start_25b .. :try_end_286} :catch_16b
    .catch Ljava/lang/RuntimeException; {:try_start_25b .. :try_end_286} :catch_21d

    .line 636
    add-int/lit8 v8, v8, 0x1

    goto :goto_271

    .line 631
    .end local v2           #N:I
    .end local v8           #i:I
    :catchall_289
    move-exception v18

    :try_start_28a
    monitor-exit v19
    :try_end_28b
    .catchall {:try_start_28a .. :try_end_28b} :catchall_289

    :try_start_28b
    throw v18

    .line 641
    :cond_28c
    sget-boolean v18, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v18, :cond_2c0

    .line 642
    const-string v18, "PackageParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has no certificates; ignoring!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_2b4
    const/16 v18, -0x67

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 649
    const/16 v18, 0x0

    goto/16 :goto_9a

    .line 645
    :cond_2c0
    const-string v18, "PackageParser"

    const-string v19, "Package pkg.packageName has no certificates; ignoring!"

    invoke-static/range {v18 .. v19}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_28b .. :try_end_2c7} :catch_a6
    .catch Ljava/io/IOException; {:try_start_28b .. :try_end_2c7} :catch_16b
    .catch Ljava/lang/RuntimeException; {:try_start_28b .. :try_end_2c7} :catch_21d

    goto :goto_2b4

    .line 665
    .restart local v2       #N:I
    .restart local v8       #i:I
    :cond_2c8
    const/16 v18, 0x1

    goto/16 :goto_9a
.end method

.method public getParseError()I
    .registers 2

    .prologue
    .line 389
    iget v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    return v0
.end method

.method public parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;
    .registers 38
    .parameter "sourceFile"
    .parameter "destCodePath"
    .parameter "metrics"
    .parameter "flags"

    .prologue
    .line 394
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 396
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 397
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_44

    .line 398
    sget-boolean v6, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v6, :cond_3c

    .line 399
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping dir: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_33
    const/16 v6, -0x64

    move-object/from16 v0, p0

    iput v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 404
    const/16 v30, 0x0

    .line 501
    :goto_3b
    return-object v30

    .line 401
    :cond_3c
    const-string v6, "PackageParser"

    const-string v7, "Skipping dir: mArchiveSourcePath"

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 406
    :cond_44
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/PackageParser;->isPackageFilename(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_87

    and-int/lit8 v6, p4, 0x4

    if-eqz v6, :cond_87

    .line 408
    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_76

    .line 411
    sget-boolean v6, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v6, :cond_7f

    .line 412
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping non-package file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_76
    :goto_76
    const/16 v6, -0x64

    move-object/from16 v0, p0

    iput v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 418
    const/16 v30, 0x0

    goto :goto_3b

    .line 414
    :cond_7f
    const-string v6, "PackageParser"

    const-string v7, "Skipping non-package file: mArchiveSourcePath"

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 424
    :cond_87
    const/16 v29, 0x0

    .line 425
    .local v29, parser:Landroid/content/res/XmlResourceParser;
    const/16 v24, 0x0

    .line 426
    .local v24, assmgr:Landroid/content/res/AssetManager;
    const/16 v31, 0x0

    .line 427
    .local v31, res:Landroid/content/res/Resources;
    const/16 v23, 0x1

    .line 429
    .local v23, assetError:Z
    :try_start_8f
    new-instance v5, Landroid/content/res/AssetManager;

    invoke-direct {v5}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_94} :catch_1fa

    .line 430
    .end local v24           #assmgr:Landroid/content/res/AssetManager;
    .local v5, assmgr:Landroid/content/res/AssetManager;
    :try_start_94
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v25

    .line 431
    .local v25, cookie:I
    if-eqz v25, :cond_e0

    .line 432
    new-instance v32, Landroid/content/res/Resources;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a8} :catch_101

    .line 433
    .end local v31           #res:Landroid/content/res/Resources;
    .local v32, res:Landroid/content/res/Resources;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :try_start_be
    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v5 .. v22}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 435
    const-string v6, "AndroidManifest.xml"

    move/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_ca} :catch_1ff

    move-result-object v29

    .line 436
    const/16 v23, 0x0

    move-object/from16 v31, v32

    .line 448
    .end local v25           #cookie:I
    .end local v32           #res:Landroid/content/res/Resources;
    .restart local v31       #res:Landroid/content/res/Resources;
    :goto_cf
    if-eqz v23, :cond_129

    .line 449
    if-eqz v5, :cond_d6

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 450
    :cond_d6
    const/16 v6, -0x65

    move-object/from16 v0, p0

    iput v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 451
    const/16 v30, 0x0

    goto/16 :goto_3b

    .line 438
    .restart local v25       #cookie:I
    :cond_e0
    :try_start_e0
    sget-boolean v6, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v6, :cond_121

    .line 439
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed adding asset path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_100} :catch_101

    goto :goto_cf

    .line 444
    .end local v25           #cookie:I
    :catch_101
    move-exception v26

    .line 445
    .local v26, e:Ljava/lang/Exception;
    :goto_102
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-static {v6, v7, v0}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cf

    .line 441
    .end local v26           #e:Ljava/lang/Exception;
    .restart local v25       #cookie:I
    :cond_121
    :try_start_121
    const-string v6, "PackageParser"

    const-string v7, "Failed adding asset path:mArchiveSourcePath"

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_128} :catch_101

    goto :goto_cf

    .line 453
    .end local v25           #cookie:I
    :cond_129
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 454
    .local v28, errorText:[Ljava/lang/String;
    const/16 v30, 0x0

    .line 455
    .local v30, pkg:Landroid/content/pm/PackageParser$Package;
    const/16 v27, 0x0

    .line 458
    .local v27, errorException:Ljava/lang/Exception;
    :try_start_132
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move/from16 v3, p4

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_13f} :catch_173

    move-result-object v30

    .line 465
    :goto_140
    if-nez v30, :cond_1df

    .line 468
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v6, :cond_14f

    move-object/from16 v0, p0

    iget v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_169

    .line 469
    :cond_14f
    if-eqz v27, :cond_17d

    .line 470
    const-string v6, "PackageParser"

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v6, v7, v0}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    :goto_15c
    move-object/from16 v0, p0

    iget v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_169

    .line 483
    const/16 v6, -0x6c

    move-object/from16 v0, p0

    iput v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 486
    :cond_169
    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->close()V

    .line 487
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 488
    const/16 v30, 0x0

    goto/16 :goto_3b

    .line 459
    :catch_173
    move-exception v26

    .line 460
    .restart local v26       #e:Ljava/lang/Exception;
    move-object/from16 v27, v26

    .line 461
    const/16 v6, -0x66

    move-object/from16 v0, p0

    iput v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_140

    .line 472
    .end local v26           #e:Ljava/lang/Exception;
    :cond_17d
    sget-boolean v6, Landroid/content/pm/PackageParser;->mIsEngBuild:Z

    if-eqz v6, :cond_1b3

    .line 473
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v28, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15c

    .line 477
    :cond_1b3
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mArchiveSourcePath (at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v28, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c

    .line 491
    :cond_1df
    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->close()V

    .line 492
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 495
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 496
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v6, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 499
    const/4 v6, 0x0

    move-object/from16 v0, v30

    iput-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    goto/16 :goto_3b

    .line 444
    .end local v5           #assmgr:Landroid/content/res/AssetManager;
    .end local v27           #errorException:Ljava/lang/Exception;
    .end local v28           #errorText:[Ljava/lang/String;
    .end local v30           #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v24       #assmgr:Landroid/content/res/AssetManager;
    :catch_1fa
    move-exception v26

    move-object/from16 v5, v24

    .end local v24           #assmgr:Landroid/content/res/AssetManager;
    .restart local v5       #assmgr:Landroid/content/res/AssetManager;
    goto/16 :goto_102

    .end local v31           #res:Landroid/content/res/Resources;
    .restart local v25       #cookie:I
    .restart local v32       #res:Landroid/content/res/Resources;
    :catch_1ff
    move-exception v26

    move-object/from16 v31, v32

    .end local v32           #res:Landroid/content/res/Resources;
    .restart local v31       #res:Landroid/content/res/Resources;
    goto/16 :goto_102
.end method

.method public setOnlyCoreApps(Z)V
    .registers 2
    .parameter "onlyCoreApps"

    .prologue
    .line 198
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 199
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .registers 2
    .parameter "procs"

    .prologue
    .line 194
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 195
    return-void
.end method
