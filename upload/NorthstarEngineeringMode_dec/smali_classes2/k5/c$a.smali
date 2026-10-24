.class public final Lk5/c$a;
.super Lk5/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lk5/c;-><init>(I)V

    iput p2, p0, Lk5/c$a;->c:I

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 0

    iget p0, p0, Lk5/c$a;->c:I

    return p0
.end method
