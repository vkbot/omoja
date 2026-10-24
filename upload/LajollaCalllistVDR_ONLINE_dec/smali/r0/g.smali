.class public final Lr0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lr0/g;->b:I

    iput p4, p0, Lr0/g;->c:I

    iput-object p1, p0, Lr0/g;->d:Ljava/lang/String;

    iput-object p2, p0, Lr0/g;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lr0/g;

    iget v0, p1, Lr0/g;->b:I

    iget v1, p0, Lr0/g;->b:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    iget v0, p0, Lr0/g;->c:I

    iget p1, p1, Lr0/g;->c:I

    sub-int v1, v0, p1

    :cond_0
    return v1
.end method
