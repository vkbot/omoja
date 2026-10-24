.class final Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;
.super Ljava/lang/Object;
.source "CrossProfileIntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private mDirection:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mFlags:I

.field public mLetsPersonalDataIntoProfile:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mFlags:I

    .line 84
    iput p1, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mDirection:I

    .line 85
    iput p2, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mFlags:I

    .line 86
    iput-boolean p3, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mLetsPersonalDataIntoProfile:Z

    return-void
.end method


# virtual methods
.method addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    return-object p0
.end method

.method addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object p0
.end method

.method addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;
    .locals 1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;
    .locals 7

    .line 114
    new-instance v6, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    iget v2, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mFlags:I

    iget v3, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mDirection:I

    iget-boolean v4, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->mLetsPersonalDataIntoProfile:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;-><init>(Landroid/content/IntentFilter;IIZLcom/android/managedprovisioning/task/CrossProfileIntentFilter$1;)V

    return-object v6
.end method
