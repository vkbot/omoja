.class public Lk5/c$b;
.super Lk5/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Lk5/c;


# virtual methods
.method public final b()Lk5/c;
    .locals 0

    iget-object p0, p0, Lk5/c$b;->c:Lk5/c;

    return-object p0
.end method
