.class public abstract Lcom/mega/nexus/app/FlyingScreenListener;
.super Ljava/lang/Object;
.source "FlyingScreenListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndFlyingScreen(IILjava/lang/String;I)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 14
    return-void
.end method

.method public onFlyingAppNotAllow(IILjava/lang/String;)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    return-void
.end method

.method public onFlyingFromExternalScreenForbidden(II)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    return-void
.end method

.method public onFlyingFromPrimaryScreenForbidden(II)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    return-void
.end method

.method public onFlyingFunctionForbidden(II)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    return-void
.end method

.method public onStartFlyingScreen(IILjava/lang/String;I)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 10
    return-void
.end method
