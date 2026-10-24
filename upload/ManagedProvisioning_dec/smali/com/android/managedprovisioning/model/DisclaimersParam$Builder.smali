.class public final Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;
.super Ljava/lang/Object;
.source "DisclaimersParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/model/DisclaimersParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDisclaimers:[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;)[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;->mDisclaimers:[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/managedprovisioning/model/DisclaimersParam;
    .locals 2

    .line 121
    new-instance v0, Lcom/android/managedprovisioning/model/DisclaimersParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/managedprovisioning/model/DisclaimersParam;-><init>(Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;Lcom/android/managedprovisioning/model/DisclaimersParam$1;)V

    return-object v0
.end method

.method public setDisclaimers([Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;)Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;->mDisclaimers:[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    return-object p0
.end method
