.class public final Lu3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt3/b<",
        "Lr3/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Ln3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lf3/b<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IILu3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/b;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lu3/b;->b:I

    iput p3, p0, Lu3/b;->c:I

    iput-object p4, p0, Lu3/b;->d:Ln3/p;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lr3/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lu3/b$a;

    invoke-direct {v0, p0}, Lu3/b$a;-><init>(Lu3/b;)V

    return-object v0
.end method
