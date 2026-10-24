.class public final synthetic Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$j0QlhiTFV-v-Eo2Gg_tTsKwYBqI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;


# instance fields
.field public final synthetic f$0:Landroid/widget/ExpandableListView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ExpandableListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$j0QlhiTFV-v-Eo2Gg_tTsKwYBqI;->f$0:Landroid/widget/ExpandableListView;

    return-void
.end method


# virtual methods
.method public final isGroupExpanded(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$j0QlhiTFV-v-Eo2Gg_tTsKwYBqI;->f$0:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result p0

    return p0
.end method
