.class public final synthetic Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$npql8ci6QKlJhtfCJvJJcfYnhS0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/widget/ExpandableListView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;Ljava/util/List;Landroid/widget/ExpandableListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$npql8ci6QKlJhtfCJvJJcfYnhS0;->f$0:Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$npql8ci6QKlJhtfCJvJJcfYnhS0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$npql8ci6QKlJhtfCJvJJcfYnhS0;->f$2:Landroid/widget/ExpandableListView;

    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$npql8ci6QKlJhtfCJvJJcfYnhS0;->f$0:Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$npql8ci6QKlJhtfCJvJJcfYnhS0;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$TermsActivity$npql8ci6QKlJhtfCJvJJcfYnhS0;->f$2:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;->lambda$setUpTermsList$1$TermsActivity(Ljava/util/List;Landroid/widget/ExpandableListView;I)V

    return-void
.end method
