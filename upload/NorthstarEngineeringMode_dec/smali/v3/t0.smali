.class public final Lv3/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/u0;


# instance fields
.field public final c:Lv3/f1;


# direct methods
.method public constructor <init>(Lv3/f1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/t0;->c:Lv3/f1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()Lv3/f1;
    .locals 0

    iget-object p0, p0, Lv3/t0;->c:Lv3/f1;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
