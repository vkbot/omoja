.class public Lcom/mega/engineeringmodeso/PwdUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPassword(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/mega/engineeringmodeso/JniUtils;->getPassword(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
