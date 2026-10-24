.class public final Ls0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls0/g;->a:I

    iput p4, p0, Ls0/g;->b:I

    iput-object p2, p0, Ls0/g;->c:Ljava/lang/String;

    iput-object p3, p0, Ls0/g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ls0/g;

    iget v0, p1, Ls0/g;->a:I

    iget v1, p0, Ls0/g;->a:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    iget p0, p0, Ls0/g;->b:I

    iget p1, p1, Ls0/g;->b:I

    sub-int v1, p0, p1

    :cond_0
    return v1
.end method
