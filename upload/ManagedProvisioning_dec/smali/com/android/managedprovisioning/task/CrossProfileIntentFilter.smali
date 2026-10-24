.class final Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;
.super Ljava/lang/Object;
.source "CrossProfileIntentFilter.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;
    }
.end annotation


# instance fields
.field public final direction:I

.field public final filter:Landroid/content/IntentFilter;

.field public final flags:I

.field public final letsPersonalDataIntoProfile:Z


# direct methods
.method private constructor <init>(Landroid/content/IntentFilter;IIZ)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IntentFilter;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;->filter:Landroid/content/IntentFilter;

    .line 72
    iput p2, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;->flags:I

    .line 73
    iput p3, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;->direction:I

    .line 74
    iput-boolean p4, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/IntentFilter;IIZLcom/android/managedprovisioning/task/CrossProfileIntentFilter$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;-><init>(Landroid/content/IntentFilter;IIZ)V

    return-void
.end method
