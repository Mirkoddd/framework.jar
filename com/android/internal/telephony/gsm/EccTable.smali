.class public final Lcom/android/internal/telephony/gsm/EccTable;
.super Ljava/lang/Object;
.source "EccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    }
.end annotation


# static fields
.field static final FILE_ECC_LIST:Ljava/lang/String; = "/data/csc/ecclists.dat"

.field private static final LOCAL_DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/EccTable$EccEntry;",
            ">;"
        }
    .end annotation
.end field

.field static updated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    .line 318
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, ""

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "450"

    const-string v3, "112,911,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "234"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "235"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "272"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "204"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "724"

    const-string v3, "112,911,190"

    const-string v4, "112,911,999,000,08,110,118,119,190"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "33402"

    const-string v3, "112,911,060"

    const-string v4, "112,911,999,000,08,110,118,119,060"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "334020"

    const-string v3, "112,911,060"

    const-string v4, "112,911,999,000,08,110,118,119,060"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "33403"

    const-string v3, "112,911,066"

    const-string v4, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "334050"

    const-string v3, "112,911,066"

    const-string v4, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "33405"

    const-string v3, "112,911,066"

    const-string v4, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "748"

    const-string v3, "112,911,104,109"

    const-string v4, "112,911,999,000,08,110,118,119,104,109"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732101"

    const-string v3, "112,911"

    const-string v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732123"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73212"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732103"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732111"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "730"

    const-string v3, "112,911,133"

    const-string v4, "112,911,999,000,08,110,118,119,133"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "736"

    const-string v3, "112,911,110"

    const-string v4, "112,911,999,000,08,110,118,119,110"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "71606"

    const-string v3, "112,911,105"

    const-string v4, "112,911,999,000,08,110,118,119,105"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73406"

    const-string v3, "112,911,*1,*171,171"

    const-string v4, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73401"

    const-string v3, "112,911,171"

    const-string v4, "112,911,999,000,08,110,118,119,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73402"

    const-string v3, "112,911,171"

    const-string v4, "112,911,999,000,08,110,118,119,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73403"

    const-string v3, "112,911,171"

    const-string v4, "112,911,999,000,08,110,118,119,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "70403"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "70604"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "71030"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "710300"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "71401"

    const-string v3, "112,911,104"

    const-string v4, "112,911,999,000,08,110,118,119,104"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310026"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310160"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310170"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310200"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310210"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310220"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310230"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310240"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310250"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310260"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310270"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310280"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310290"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310310"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310330"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310490"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310580"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310660"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310800"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310026"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310026"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "454"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "505"

    const-string v3, "112,911,000"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "530"

    const-string v3, "112,911,000,111"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "46006"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,08,110,118,119,120,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "440"

    const-string v3, "112,911,110,118,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "441"

    const-string v3, "112,911,110,118,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "424"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "430"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "431"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42501"

    const-string v3, "112,911,100"

    const-string v4, "112,911,100"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42502"

    const-string v3, "112,911"

    const-string v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42503"

    const-string v3, "112,911,100"

    const-string v4, "112,911,100"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42505"

    const-string v3, "112,911"

    const-string v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "620"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 542
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static emergencyNumbersForPLMN(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .parameter "plmn"
    .parameter "withSIM"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/EccTable;->entryForPLMN(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    move-result-object v0

    .line 103
    .local v0, entry:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    if-nez v0, :cond_9

    .line 104
    const-string v1, ""

    .line 109
    :goto_8
    return-object v1

    .line 106
    :cond_9
    if-eqz p1, :cond_e

    .line 107
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    goto :goto_8

    .line 109
    :cond_e
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    goto :goto_8
.end method

.method private static entryForPLMN(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    .registers 6
    .parameter "plmn"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 66
    const/4 v0, 0x0

    .line 70
    .local v0, index:I
    if-eqz p0, :cond_2b

    .line 71
    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v1, p0, v3, v3}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v1, m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 75
    if-gez v0, :cond_2b

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_28

    .line 77
    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .end local v1           #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .restart local v1       #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 82
    :cond_28
    if-gez v0, :cond_2b

    .line 83
    const/4 v0, 0x0

    .line 88
    .end local v1           #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    :cond_2b
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    return-object v2
.end method

.method public static printEccTable()V
    .registers 0

    .prologue
    .line 295
    return-void
.end method

.method public static updateEccTable(Ljava/lang/String;)V
    .registers 14
    .parameter "customerSpec"

    .prologue
    .line 180
    const/4 v6, 0x0

    .line 181
    .local v6, reader:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 182
    .local v8, str:Ljava/lang/String;
    const/4 v5, 0x0

    .line 183
    .local v5, plmn:Ljava/lang/String;
    const/4 v2, 0x0

    .line 184
    .local v2, emergencyNumberWithSIM:Ljava/lang/String;
    const/4 v3, 0x0

    .line 188
    .local v3, emergencyNumberWithoutSIM:Ljava/lang/String;
    :try_start_5
    sget-boolean v9, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_112
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_7} :catch_13a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_7} :catch_d5

    if-nez v9, :cond_b

    if-nez p0, :cond_2a

    .line 268
    :cond_b
    if-eqz v6, :cond_e

    .line 269
    :try_start_d
    throw v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_e} :catch_f

    .line 276
    :cond_e
    :goto_e
    return-void

    .line 271
    :catch_f
    move-exception v1

    .line 273
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateEccTable() Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 195
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2a
    :try_start_2a
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_112
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_34} :catch_13a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_d5

    .line 196
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    if-nez v7, :cond_58

    .line 268
    if-eqz v7, :cond_3b

    .line 269
    :try_start_38
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3d

    :cond_3b
    :goto_3b
    move-object v6, v7

    .line 274
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_e

    .line 271
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_3d
    move-exception v1

    .line 273
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateEccTable() Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 200
    .end local v1           #e:Ljava/lang/Exception;
    :cond_58
    :try_start_58
    const-string v9, "\n"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, conventionalSpec:[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_78

    .line 203
    const/4 v9, 0x0

    aget-object v2, v0, v9

    .line 204
    const/4 v9, 0x1

    aget-object v3, v0, v9

    .line 205
    const-string v9, ""

    invoke-static {v9, v2, v3}, Lcom/android/internal/telephony/gsm/EccTable;->updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    :cond_6e
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z
    :try_end_71
    .catchall {:try_start_58 .. :try_end_71} :catchall_134
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_71} :catch_93
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_71} :catch_137

    .line 268
    if-eqz v7, :cond_76

    .line 269
    :try_start_73
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_b8

    :cond_76
    move-object v6, v7

    .line 274
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_e

    .line 208
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_78
    :goto_78
    :try_start_78
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6e

    .line 209
    const/4 v2, 0x0

    .line 210
    const/4 v3, 0x0

    .line 213
    move-object v5, v8

    .line 220
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 221
    if-eqz v8, :cond_88

    .line 223
    move-object v2, v8

    .line 231
    :cond_88
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 232
    if-eqz v8, :cond_8f

    .line 234
    move-object v3, v8

    .line 241
    :cond_8f
    invoke-static {v5, v2, v3}, Lcom/android/internal/telephony/gsm/EccTable;->updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_92
    .catchall {:try_start_78 .. :try_end_92} :catchall_134
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_92} :catch_93
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_92} :catch_137

    goto :goto_78

    .line 252
    .end local v0           #conventionalSpec:[Ljava/lang/String;
    :catch_93
    move-exception v9

    move-object v6, v7

    .line 268
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :goto_95
    if-eqz v6, :cond_e

    .line 269
    :try_start_97
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_9c

    goto/16 :goto_e

    .line 271
    :catch_9c
    move-exception v1

    .line 273
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateEccTable() Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 271
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v0       #conventionalSpec:[Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_b8
    move-exception v1

    .line 273
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateEccTable() Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 275
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_e

    .line 259
    .end local v0           #conventionalSpec:[Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_d5
    move-exception v4

    .line 261
    .local v4, ioe:Ljava/io/IOException;
    :goto_d6
    :try_start_d6
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateEccTable() IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catchall {:try_start_d6 .. :try_end_ef} :catchall_112

    .line 268
    if-eqz v6, :cond_e

    .line 269
    :try_start_f1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_f6

    goto/16 :goto_e

    .line 271
    :catch_f6
    move-exception v1

    .line 273
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateEccTable() Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 266
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #ioe:Ljava/io/IOException;
    :catchall_112
    move-exception v9

    .line 268
    :goto_113
    if-eqz v6, :cond_118

    .line 269
    :try_start_115
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_118} :catch_119

    .line 274
    :cond_118
    :goto_118
    throw v9

    .line 271
    :catch_119
    move-exception v1

    .line 273
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_118

    .line 266
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catchall_134
    move-exception v9

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_113

    .line 259
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_137
    move-exception v4

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_d6

    .line 252
    :catch_13a
    move-exception v9

    goto/16 :goto_95
.end method

.method public static updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "plmn"
    .parameter "emergencyNumberWithSIM"
    .parameter "emergencyNumberWithoutSIM"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 121
    if-nez p0, :cond_7

    move v4, v5

    .line 174
    :goto_6
    return v4

    .line 124
    :cond_7
    new-instance v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v2, p0, v6, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v2, m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 128
    .local v3, updateIndex:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 129
    :cond_1e
    const/4 v0, 0x0

    .line 131
    .local v0, defaultIndex:I
    if-lez v3, :cond_52

    .line 132
    move v0, v3

    .line 141
    :cond_22
    :goto_22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 142
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object p1, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    .line 144
    :cond_32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 145
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object p2, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    .line 156
    .end local v0           #defaultIndex:I
    :cond_42
    if-gez v3, :cond_7c

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6b

    :cond_50
    move v4, v5

    .line 158
    goto :goto_6

    .line 133
    .restart local v0       #defaultIndex:I
    :cond_52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_22

    .line 134
    new-instance v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .end local v2           #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v6, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .restart local v2       #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 137
    if-gez v0, :cond_22

    .line 138
    const/4 v0, 0x0

    goto :goto_22

    .line 160
    .end local v0           #defaultIndex:I
    :cond_6b
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 174
    :goto_7a
    const/4 v4, 0x1

    goto :goto_6

    .line 164
    :cond_7c
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .line 166
    .local v1, entry:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 167
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    .line 168
    :cond_8c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 169
    iput-object p2, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    .line 171
    :cond_94
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a
.end method
