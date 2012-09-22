.class public final Landroid/util/secutil/LogSwitcher;
.super Ljava/lang/Object;
.source "LogSwitcher.java"


# static fields
.field public static isShowingGlobalLog:Z

.field public static isShowingSecDLog:Z

.field public static isShowingSecELog:Z

.field public static isShowingSecILog:Z

.field public static isShowingSecVLog:Z

.field public static isShowingSecWLog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    .line 17
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    .line 19
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    .line 21
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    .line 23
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    .line 25
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    .line 37
    :try_start_d
    const-string v0, "1"

    const-string/jumbo v1, "persist.log.seclevel"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    .line 45
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    .line 47
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    .line 49
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    .line 51
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    .line 53
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_32} :catch_33

    .line 61
    :goto_32
    return-void

    .line 55
    :catch_33
    move-exception v0

    goto :goto_32
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
