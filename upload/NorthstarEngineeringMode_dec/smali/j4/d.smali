.class public abstract Lj4/d;
.super Lj4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lj4/d<",
        "TT;TB;>;>",
        "Lj4/b<",
        "TT;TB;>;"
    }
.end annotation


# static fields
.field public static final e1:[Ljava/nio/file/OpenOption;


# instance fields
.field public Z:Ljava/nio/charset/Charset;

.field public b1:Ljava/nio/charset/Charset;

.field public final c1:[Ljava/nio/file/OpenOption;

.field public final d1:Lj4/c;

.field public r:I

.field public final x:I

.field public final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lk4/a;->a:[Ljava/nio/file/OpenOption;

    sput-object v0, Lj4/d;->e1:[Ljava/nio/file/OpenOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lj4/b;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lj4/d;->r:I

    iput v0, p0, Lj4/d;->x:I

    const v0, 0x7fffffff

    iput v0, p0, Lj4/d;->y:I

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lj4/d;->Z:Ljava/nio/charset/Charset;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lj4/d;->b1:Ljava/nio/charset/Charset;

    sget-object v0, Lj4/d;->e1:[Ljava/nio/file/OpenOption;

    iput-object v0, p0, Lj4/d;->c1:[Ljava/nio/file/OpenOption;

    new-instance v0, Lj4/c;

    invoke-direct {v0, p0}, Lj4/c;-><init>(Lj4/d;)V

    iput-object v0, p0, Lj4/d;->d1:Lj4/c;

    return-void
.end method


# virtual methods
.method public final j(I)V
    .locals 1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lj4/d;->x:I

    :goto_0
    iget-object v0, p0, Lj4/d;->d1:Lj4/c;

    invoke-virtual {v0, p1}, Lj4/c;->applyAsInt(I)I

    iput p1, p0, Lj4/d;->r:I

    return-void
.end method
