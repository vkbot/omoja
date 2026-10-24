.class public Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;
.super Lcom/android/managedprovisioning/common/SetupLayoutActivity;
.source "TermsActivity.java"


# instance fields
.field private final mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

.field private final mExpandedGroupsPosition:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

.field private final mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

.field private final mTermsProvider:Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 65
    sget-object v0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$c4SNxNkmzOG2jAgMgDJ_WLl5F9o;->INSTANCE:Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$c4SNxNkmzOG2jAgMgDJ_WLl5F9o;

    new-instance v1, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;-><init>(Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Lcom/android/managedprovisioning/common/SettingsFacade;)V

    return-void
.end method

.method constructor <init>(Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Lcom/android/managedprovisioning/common/SettingsFacade;)V
    .locals 2

    .line 71
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mExpandedGroupsPosition:Ljava/util/Set;

    .line 72
    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;

    iget-object v1, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;Lcom/android/managedprovisioning/common/Utils;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mTermsProvider:Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p2, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    invoke-direct {p2, p0}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;-><init>(Landroid/app/Activity;)V

    :goto_0
    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    .line 76
    iput-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$setUpTermsList$1(Ljava/util/List;Landroid/widget/ExpandableListView;I)V
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mExpandedGroupsPosition:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 134
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    if-eq p0, p3, :cond_0

    .line 135
    invoke-virtual {p2, p0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p2, p0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setUpTermsList(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;",
            ">;I)V"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0901b0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    .line 114
    new-instance v1, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 119
    new-instance v8, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    new-instance v5, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    invoke-direct {v5, p0}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;-><init>(Landroid/app/Activity;)V

    .line 123
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$j0QlhiTFV-v-Eo2Gg_tTsKwYBqI;

    invoke-direct {v6, v0}, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$j0QlhiTFV-v-Eo2Gg_tTsKwYBqI;-><init>(Landroid/widget/ExpandableListView;)V

    move-object v1, v8

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;I)V

    .line 119
    invoke-virtual {v0, v8}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    const/4 p2, 0x0

    .line 124
    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 127
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 128
    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mExpandedGroupsPosition:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 132
    :cond_2
    new-instance p2, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$npql8ci6QKlJhtfCJvJJcfYnhS0;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$npql8ci6QKlJhtfCJvJJcfYnhS0;-><init>(Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;Ljava/util/List;Landroid/widget/ExpandableListView;)V

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 0

    const/16 p0, 0x329

    return p0
.end method

.method public synthetic lambda$onCreate$0$TermsActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setUpTermsList$1$TermsActivity(Ljava/util/List;Landroid/widget/ExpandableListView;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->lambda$setUpTermsList$1(Ljava/util/List;Landroid/widget/ExpandableListView;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0499

    .line 82
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 84
    :cond_0
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00c0

    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0d00cf

    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const v0, 0x7f0600a8

    .line 87
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->setStatusBarColor(I)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "provisioningParams"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 90
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 92
    iget-object v3, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mTermsProvider:Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->getTerms(Lcom/android/managedprovisioning/model/ProvisioningParams;I)Ljava/util/List;

    move-result-object v2

    .line 94
    invoke-direct {p0, v2, v0}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->setUpTermsList(Ljava/util/List;I)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-static {p0}, Lcom/android/car/ui/core/CarUi;->requireToolbar(Landroid/app/Activity;)Lcom/android/car/ui/toolbar/ToolbarController;

    move-result-object v0

    .line 98
    invoke-interface {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarController;->setTitle(I)V

    .line 99
    sget-object p1, Lcom/android/car/ui/toolbar/Toolbar$State;->SUBPAGE:Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-interface {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarController;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0901c1

    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    .line 102
    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$lenC8x-L2EQGc3ug149ERQK3jrU;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$lenC8x-L2EQGc3ug149ERQK3jrU;-><init>(Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :goto_0
    new-instance p1, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    .line 106
    invoke-static {p0, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logNumberOfTermsDisplayed(Landroid/content/Context;I)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 147
    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 148
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->populateMenuContent(Landroid/view/ContextMenu;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->mExpandedGroupsPosition:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logNumberOfTermsRead(Landroid/content/Context;I)V

    .line 164
    invoke-super {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 158
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
