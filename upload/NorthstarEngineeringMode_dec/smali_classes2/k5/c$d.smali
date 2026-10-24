.class public final Lk5/c$d;
.super Lk5/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1}, Lk5/c;-><init>(I)V

    iput p2, p0, Lk5/c$d;->d:I

    iput p3, p0, Lk5/c$d;->e:I

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 0

    iget p0, p0, Lk5/c$d;->d:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lk5/c$d;->e:I

    return p0
.end method
