.class public Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;
.super Ljava/lang/Object;
.source "DisclaimersParam.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/model/DisclaimersParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Disclaimer"
.end annotation


# instance fields
.field public final mContentFilePath:Ljava/lang/String;

.field public final mHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;->mHeader:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;->mContentFilePath:Ljava/lang/String;

    return-void
.end method
