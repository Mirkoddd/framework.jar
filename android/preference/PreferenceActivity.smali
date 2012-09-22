.class public abstract Landroid/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$Header;,
        Landroid/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"


# instance fields
.field private mCurHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeviceDefault:Z

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceActivityLayoutResID:I

.field private mPreferenceHeaderItemLayoutResID:I

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Landroid/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$1;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 552
    const v0, 0x1090080

    iput v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceActivityLayoutResID:I

    .line 553
    const v0, 0x109007c

    iput v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I

    return-void
.end method

.method static synthetic access$000(Landroid/preference/PreferenceActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .registers 3

    .prologue
    .line 1380
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1381
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_19

    .line 1382
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1383
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_19

    .line 1384
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1385
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1388
    :cond_19
    return-void
.end method

.method private postBindPreferences()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1375
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1377
    :goto_9
    return-void

    .line 1376
    :cond_a
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method private requirePreferenceManager()V
    .registers 3

    .prologue
    .line 1403
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_18

    .line 1404
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_10

    .line 1405
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1410
    :cond_18
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 9
    .parameter "fragmentName"
    .parameter "args"
    .parameter "direction"

    .prologue
    .line 1191
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1193
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1194
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1195
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1196
    const v2, 0x1020314

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1197
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1198
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1461
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1463
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1464
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .registers 4
    .parameter "preferencesResId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1477
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1479
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1481
    return-void
.end method

.method findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;
    .registers 12
    .parameter "cur"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2b

    .line 1234
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1235
    .local v3, oh:Landroid/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_25

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3a

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3a

    .line 1237
    :cond_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1238
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    .end local v3           #oh:Landroid/preference/PreferenceActivity$Header;
    :cond_2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1256
    .local v0, NM:I
    if-ne v0, v8, :cond_72

    .line 1257
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    move-object v3, v4

    .line 1273
    :cond_39
    :goto_39
    return-object v3

    .line 1241
    .end local v0           #NM:I
    .restart local v3       #oh:Landroid/preference/PreferenceActivity$Header;
    :cond_3a
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_4e

    .line 1242
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1243
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1245
    :cond_4e
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_60

    .line 1246
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1247
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 1249
    :cond_60
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4b

    .line 1250
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1251
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 1258
    .end local v3           #oh:Landroid/preference/PreferenceActivity$Header;
    .restart local v0       #NM:I
    :cond_72
    if-le v0, v8, :cond_aa

    .line 1259
    const/4 v1, 0x0

    :goto_75
    if-ge v1, v0, :cond_aa

    .line 1260
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1261
    .restart local v3       #oh:Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8b

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1265
    :cond_8b
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_99

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1268
    :cond_99
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a7

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1259
    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 1273
    .end local v3           #oh:Landroid/preference/PreferenceActivity$Header;
    :cond_aa
    const/4 v3, 0x0

    goto :goto_39
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 3
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1507
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 1508
    const/4 v0, 0x0

    .line 1511
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_5
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .registers 6
    .parameter "caller"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1346
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_b

    .line 1347
    invoke-virtual {p0, p2, p3}, Landroid/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1348
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 1359
    :cond_a
    :goto_a
    return-void

    .line 1351
    :cond_b
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1352
    if-eqz p1, :cond_a

    .line 1353
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1354
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_a
.end method

.method protected getNextButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 1528
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1399
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1445
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_b

    .line 1446
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1448
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasHeaders()Z
    .registers 2

    .prologue
    .line 724
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected hasNextButton()Z
    .registers 2

    .prologue
    .line 1524
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public invalidateHeaders()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 801
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 802
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 804
    :cond_e
    return-void
.end method

.method public isMultiPane()Z
    .registers 2

    .prologue
    .line 733
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .registers 19
    .parameter "resid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p2, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x0

    .line 816
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 817
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 821
    .local v1, attrs:Landroid/util/AttributeSet;
    :cond_f
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_19

    const/4 v13, 0x2

    if-ne v12, v13, :cond_f

    .line 825
    :cond_19
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 826
    .local v7, nodeName:Ljava/lang/String;
    const-string/jumbo v13, "preference-headers"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5d

    .line 827
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_4d} :catch_4d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4d} :catch_138

    .line 927
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v12           #type:I
    :catch_4d
    move-exception v3

    .line 928
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4e
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_56

    .line 932
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_56
    move-exception v13

    if-eqz v9, :cond_5c

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5c
    throw v13

    .line 832
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v12       #type:I
    :cond_5d
    const/4 v2, 0x0

    .line 834
    .local v2, curBundle:Landroid/os/Bundle;
    :try_start_5e
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 836
    .local v8, outerDepth:I
    :cond_62
    :goto_62
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_183

    const/4 v13, 0x3

    if-ne v12, v13, :cond_72

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_183

    .line 837
    :cond_72
    const/4 v13, 0x3

    if-eq v12, v13, :cond_62

    const/4 v13, 0x4

    if-eq v12, v13, :cond_62

    .line 841
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 842
    const-string v13, "header"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17e

    .line 843
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 845
    .local v4, header:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v13, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 847
    .local v10, sa:Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    const/4 v14, -0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 850
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 852
    .local v11, tv:Landroid/util/TypedValue;
    if-eqz v11, :cond_b0

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_b0

    .line 853
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_141

    .line 854
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 859
    :cond_b0
    :goto_b0
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 861
    if-eqz v11, :cond_c4

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_c4

    .line 862
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_147

    .line 863
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 868
    :cond_c4
    :goto_c4
    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 870
    if-eqz v11, :cond_d8

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_d8

    .line 871
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_14d

    .line 872
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 877
    :cond_d8
    :goto_d8
    const/4 v13, 0x6

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 879
    if-eqz v11, :cond_ec

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_ec

    .line 880
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_152

    .line 881
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 886
    :cond_ec
    :goto_ec
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 888
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 890
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 892
    if-nez v2, :cond_105

    .line 893
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #curBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 896
    .restart local v2       #curBundle:Landroid/os/Bundle;
    :cond_105
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 898
    .local v5, innerDepth:I
    :cond_109
    :goto_109
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_16e

    const/4 v13, 0x3

    if-ne v12, v13, :cond_119

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_16e

    .line 899
    :cond_119
    const/4 v13, 0x3

    if-eq v12, v13, :cond_109

    const/4 v13, 0x4

    if-eq v12, v13, :cond_109

    .line 903
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 904
    .local v6, innerNodeName:Ljava/lang/String;
    const-string v13, "extra"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_157

    .line 905
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "extra"

    invoke-virtual {v13, v14, v1, v2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 906
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_137
    .catchall {:try_start_5e .. :try_end_137} :catchall_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_137} :catch_4d
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_137} :catch_138

    goto :goto_109

    .line 929
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #curBundle:Landroid/os/Bundle;
    .end local v4           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v6           #innerNodeName:Ljava/lang/String;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v8           #outerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #tv:Landroid/util/TypedValue;
    .end local v12           #type:I
    :catch_138
    move-exception v3

    .line 930
    .local v3, e:Ljava/io/IOException;
    :try_start_139
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_141
    .catchall {:try_start_139 .. :try_end_141} :catchall_56

    .line 856
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v2       #curBundle:Landroid/os/Bundle;
    .restart local v4       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v8       #outerDepth:I
    .restart local v10       #sa:Landroid/content/res/TypedArray;
    .restart local v11       #tv:Landroid/util/TypedValue;
    .restart local v12       #type:I
    :cond_141
    :try_start_141
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_b0

    .line 865
    :cond_147
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_c4

    .line 874
    :cond_14d
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_d8

    .line 883
    :cond_152
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_ec

    .line 908
    .restart local v5       #innerDepth:I
    .restart local v6       #innerNodeName:Ljava/lang/String;
    :cond_157
    const-string v13, "intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16a

    .line 909
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v9, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v13

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_109

    .line 912
    :cond_16a
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_109

    .line 916
    .end local v6           #innerNodeName:Ljava/lang/String;
    :cond_16e
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v13

    if-lez v13, :cond_177

    .line 917
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 918
    const/4 v2, 0x0

    .line 921
    :cond_177
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_62

    .line 923
    .end local v4           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #tv:Landroid/util/TypedValue;
    :cond_17e
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_181
    .catchall {:try_start_141 .. :try_end_181} :catchall_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_141 .. :try_end_181} :catch_4d
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_181} :catch_138

    goto/16 :goto_62

    .line 932
    :cond_183
    if-eqz v9, :cond_188

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 935
    :cond_188
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1010
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1012
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_c

    .line 1013
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1015
    :cond_c
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .registers 8
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1081
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1082
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1084
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1085
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1086
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1087
    return-object v0
.end method

.method public onContentChanged()V
    .registers 2

    .prologue
    .line 1019
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1021
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_a

    .line 1022
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1024
    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 25
    .parameter "savedInstanceState"

    .prologue
    .line 557
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 559
    sget-object v20, Lcom/android/internal/R$styleable;->Theme:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 562
    .local v4, a:Landroid/content/res/TypedArray;
    const/16 v20, 0xf5

    const v21, 0x1090080

    :try_start_12
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceActivityLayoutResID:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_22b

    .line 567
    :goto_20
    const v20, 0x109007c

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I

    .line 569
    const/16 v20, 0xf6

    const v21, 0x109007c

    :try_start_2e
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_236

    .line 574
    :goto_3c
    const/16 v20, 0x114

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    .line 576
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 578
    move-object/from16 v0, p0

    iget v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceActivityLayoutResID:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 580
    const v20, 0x1020312

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 581
    const v20, 0x1020313

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 582
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v11

    .line 583
    .local v11, hidingHeaders:Z
    if-nez v11, :cond_90

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v20

    if-nez v20, :cond_241

    :cond_90
    const/16 v20, 0x1

    :goto_92
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    .line 584
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, ":android:show_fragment"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 585
    .local v13, initialFragment:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, ":android:show_fragment_args"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 586
    .local v12, initialArguments:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, ":android:show_fragment_title"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 587
    .local v16, initialTitle:I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, ":android:show_fragment_short_title"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 589
    .local v14, initialShortTitle:I
    if-eqz p1, :cond_245

    .line 592
    const-string v20, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 593
    .local v10, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v10, :cond_110

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 595
    const-string v20, ":android:cur_header"

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 597
    .local v7, curHeader:I
    if-ltz v7, :cond_110

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_110

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 637
    .end local v7           #curHeader:I
    .end local v10           #headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_110
    :goto_110
    if-eqz v13, :cond_2a9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2a9

    .line 639
    const v20, 0x1020311

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    if-eqz v16, :cond_14e

    .line 642
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 643
    .local v17, initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v14, :cond_2a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 645
    .local v15, initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_147
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 668
    .end local v15           #initialShortTitleStr:Ljava/lang/CharSequence;
    .end local v17           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_14e
    :goto_14e
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 669
    .local v18, intent:Landroid/content/Intent;
    const-string v20, "extra_prefs_show_button_bar"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_22a

    .line 671
    const v20, 0x1020315

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 673
    const v20, 0x1020316

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 674
    .local v5, backButton:Landroid/widget/Button;
    new-instance v20, Landroid/preference/PreferenceActivity$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$2;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    const v20, 0x1020317

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 681
    .local v19, skipButton:Landroid/widget/Button;
    new-instance v20, Landroid/preference/PreferenceActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$3;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    const v20, 0x1020318

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Landroid/preference/PreferenceActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$4;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    const-string v20, "extra_prefs_set_next_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1f2

    .line 697
    const-string v20, "extra_prefs_set_next_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 698
    .local v6, buttonText:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_366

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 705
    .end local v6           #buttonText:Ljava/lang/String;
    :cond_1f2
    :goto_1f2
    const-string v20, "extra_prefs_set_back_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_215

    .line 706
    const-string v20, "extra_prefs_set_back_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 707
    .restart local v6       #buttonText:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_373

    .line 708
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 714
    .end local v6           #buttonText:Ljava/lang/String;
    :cond_215
    :goto_215
    const-string v20, "extra_prefs_show_skip"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_22a

    .line 715
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 718
    .end local v5           #backButton:Landroid/widget/Button;
    .end local v19           #skipButton:Landroid/widget/Button;
    :cond_22a
    return-void

    .line 563
    .end local v11           #hidingHeaders:Z
    .end local v12           #initialArguments:Landroid/os/Bundle;
    .end local v13           #initialFragment:Ljava/lang/String;
    .end local v14           #initialShortTitle:I
    .end local v16           #initialTitle:I
    .end local v18           #intent:Landroid/content/Intent;
    :catch_22b
    move-exception v8

    .line 564
    .local v8, e:Ljava/lang/Exception;
    const-string v20, "PreferenceActivity"

    const-string/jumbo v21, "mPreferenceActivityLayoutResID not found."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 570
    .end local v8           #e:Ljava/lang/Exception;
    :catch_236
    move-exception v8

    .line 571
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v20, "PreferenceActivity"

    const-string/jumbo v21, "mPreferenceHeaderItemLayoutResID not found."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 583
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v11       #hidingHeaders:Z
    :cond_241
    const/16 v20, 0x0

    goto/16 :goto_92

    .line 603
    .restart local v12       #initialArguments:Landroid/os/Bundle;
    .restart local v13       #initialFragment:Ljava/lang/String;
    .restart local v14       #initialShortTitle:I
    .restart local v16       #initialTitle:I
    :cond_245
    if-eqz v13, :cond_271

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-eqz v20, :cond_271

    .line 607
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 608
    if-eqz v16, :cond_110

    .line 609
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 610
    .restart local v17       #initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v14, :cond_26f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 612
    .restart local v15       #initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_266
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_110

    .line 610
    .end local v15           #initialShortTitleStr:Ljava/lang/CharSequence;
    :cond_26f
    const/4 v15, 0x0

    goto :goto_266

    .line 617
    .end local v17           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_110

    .line 623
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-nez v20, :cond_110

    .line 624
    if-nez v13, :cond_29f

    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v9

    .line 626
    .local v9, h:Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto/16 :goto_110

    .line 628
    .end local v9           #h:Landroid/preference/PreferenceActivity$Header;
    :cond_29f
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_110

    .line 643
    .restart local v17       #initialTitleStr:Ljava/lang/CharSequence;
    :cond_2a6
    const/4 v15, 0x0

    goto/16 :goto_147

    .line 647
    .end local v17           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_2a9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_308

    .line 648
    new-instance v20, Landroid/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 649
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-nez v20, :cond_14e

    .line 651
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2fb

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 655
    :cond_2fb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_14e

    .line 660
    :cond_308
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    move/from16 v20, v0

    if-eqz v20, :cond_362

    const v20, 0x10900d8

    :goto_313
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 661
    const v20, 0x1020312

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 662
    const v20, 0x1020314

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 663
    new-instance v20, Landroid/preference/PreferenceManager;

    const/16 v21, 0x64

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_14e

    .line 660
    :cond_362
    const v20, 0x1090081

    goto :goto_313

    .line 702
    .restart local v5       #backButton:Landroid/widget/Button;
    .restart local v6       #buttonText:Ljava/lang/String;
    .restart local v18       #intent:Landroid/content/Intent;
    .restart local v19       #skipButton:Landroid/widget/Button;
    :cond_366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1f2

    .line 711
    :cond_373
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_215
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 958
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 960
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_c

    .line 961
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 963
    :cond_c
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 3

    .prologue
    .line 766
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 2

    .prologue
    .line 776
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .registers 10
    .parameter "header"
    .parameter "position"

    .prologue
    .line 1046
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 1047
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1c

    .line 1048
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1049
    .local v5, titleRes:I
    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1050
    .local v6, shortTitleRes:I
    if-nez v5, :cond_11

    .line 1051
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1052
    const/4 v6, 0x0

    .line 1054
    :cond_11
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1062
    .end local v5           #titleRes:I
    .end local v6           #shortTitleRes:I
    :cond_1b
    :goto_1b
    return-void

    .line 1057
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_1b

    .line 1059
    :cond_20
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1b

    .line 1060
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b
.end method

.method public onIsHidingHeaders()Z
    .registers 4

    .prologue
    .line 755
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .registers 4

    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 744
    .local v0, preferMultiPane:Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1028
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1030
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_16

    .line 1031
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1032
    .local v0, item:Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_16

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .end local v0           #item:Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1034
    :cond_16
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_9

    .line 1517
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1519
    :cond_9
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .registers 10
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 1363
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1365
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1491
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 991
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_18

    .line 992
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 993
    .local v0, container:Landroid/os/Bundle;
    if-eqz v0, :cond_18

    .line 994
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 995
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_18

    .line 996
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 997
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1006
    .end local v0           #container:Landroid/os/Bundle;
    .end local v1           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :goto_17
    return-void

    .line 1005
    :cond_18
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_17
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 967
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 969
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_25

    .line 970
    const-string v3, ":android:headers"

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 971
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_25

    .line 972
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 973
    .local v1, index:I
    if-ltz v1, :cond_25

    .line 974
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 979
    .end local v1           #index:I
    :cond_25
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_3c

    .line 980
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 981
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_3c

    .line 982
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 983
    .local v0, container:Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 984
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 987
    .end local v0           #container:Landroid/os/Bundle;
    .end local v2           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_3c
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 949
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 951
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_c

    .line 952
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 954
    :cond_c
    return-void
.end method

.method protected setActionBarShadow(Z)V
    .registers 9
    .parameter "use"

    .prologue
    const/4 v6, 0x0

    .line 532
    iget-boolean v4, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-nez v4, :cond_6

    .line 550
    :cond_5
    :goto_5
    return-void

    .line 534
    :cond_6
    const v4, 0x102036c

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 535
    .local v3, shadowLayout:Landroid/view/ViewGroup;
    const v4, 0x1020002

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 537
    .local v1, rootLayout:Landroid/widget/FrameLayout;
    if-nez v3, :cond_36

    .line 538
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 539
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x10900c9

    invoke-virtual {v0, v4, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 540
    .local v2, shadow:Landroid/view/View;
    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 541
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 545
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #shadow:Landroid/view/View;
    :cond_36
    if-eqz p1, :cond_3c

    .line 546
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 548
    :cond_3c
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5
.end method

.method public setListFooter(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 941
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 942
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 5
    .parameter "title"
    .parameter "shortTitle"
    .parameter "listener"

    .prologue
    .line 1162
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_9

    .line 1163
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1165
    :cond_9
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .registers 4
    .parameter "preferenceScreen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1422
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1424
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz p1, :cond_1d

    .line 1425
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1426
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1428
    .local v0, title:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1d

    .line 1429
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1432
    .end local v0           #title:Ljava/lang/CharSequence;
    :cond_1d
    return-void
.end method

.method setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V
    .registers 5
    .parameter "header"

    .prologue
    .line 1168
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1169
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1170
    .local v0, index:I
    if-ltz v0, :cond_27

    .line 1171
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1172
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/preference/PreferenceActivity$HeaderAdapter;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/preference/PreferenceActivity$HeaderAdapter;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->setSelectedId(I)V

    .line 1176
    :cond_23
    :goto_23
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V

    .line 1177
    return-void

    .line 1174
    :cond_27
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_23
.end method

.method showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V
    .registers 5
    .parameter "header"

    .prologue
    .line 1180
    if-eqz p1, :cond_26

    .line 1181
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1182
    .local v0, title:Ljava/lang/CharSequence;
    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1183
    :cond_14
    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1184
    :cond_1a
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1188
    .end local v0           #title:Ljava/lang/CharSequence;
    :goto_25
    return-void

    .line 1186
    :cond_26
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_25
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    const/4 v4, 0x0

    .line 1132
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v2, :cond_27

    .line 1133
    const v2, 0x1020016

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1136
    .local v0, crumbs:Landroid/view/View;
    :try_start_c
    check-cast v0, Landroid/app/FragmentBreadCrumbs;

    .end local v0           #crumbs:Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_10} :catch_1a

    .line 1140
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v2, :cond_1c

    .line 1141
    if-eqz p1, :cond_19

    .line 1142
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1151
    :cond_19
    :goto_19
    return-void

    .line 1137
    :catch_1a
    move-exception v1

    .line 1138
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_19

    .line 1146
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_1c
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1147
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1149
    :cond_27
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1150
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, v4, v4, v4}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_19
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .registers 5
    .parameter "fragment"
    .parameter "push"

    .prologue
    .line 1284
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1285
    .local v0, transaction:Landroid/app/FragmentTransaction;
    const v1, 0x1020314

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1286
    if-eqz p2, :cond_1e

    .line 1287
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1288
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1292
    :goto_1a
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1293
    return-void

    .line 1290
    :cond_1e
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_1a
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .registers 16
    .parameter "fragmentClass"
    .parameter "args"
    .parameter "titleRes"
    .parameter "titleText"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    .line 1316
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_f

    .line 1317
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1334
    :goto_e
    return-void

    .line 1319
    :cond_f
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1320
    .local v7, f:Landroid/app/Fragment;
    if-eqz p5, :cond_18

    .line 1321
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1323
    :cond_18
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1324
    .local v8, transaction:Landroid/app/FragmentTransaction;
    const v0, 0x1020314

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1325
    if-eqz p3, :cond_39

    .line 1326
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1330
    :cond_2b
    :goto_2b
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1331
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1332
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_e

    .line 1327
    :cond_39
    if-eqz p4, :cond_2b

    .line 1328
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_2b
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .registers 12
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    const/4 v5, 0x0

    .line 1096
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1097
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .registers 8
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1118
    invoke-virtual {p0, p1, p2, p5, p6}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1119
    .local v0, intent:Landroid/content/Intent;
    if-nez p3, :cond_a

    .line 1120
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1124
    :goto_9
    return-void

    .line 1122
    :cond_a
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .registers 6
    .parameter "header"

    .prologue
    .line 1219
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-ne v1, p1, :cond_f

    .line 1222
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ":android:prefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1229
    :goto_e
    return-void

    .line 1225
    :cond_f
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v1, v2

    .line 1226
    .local v0, direction:I
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v0}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1227
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_e
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 1208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1210
    return-void
.end method
