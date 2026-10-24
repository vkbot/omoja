.class public final Ll/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Li/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/d<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:Li/h;


# direct methods
.method public constructor <init>(Li/d;Ljava/lang/Object;Li/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/d<",
            "TDataType;>;TDataType;",
            "Li/h;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/g;->a:Li/d;

    iput-object p2, p0, Ll/g;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll/g;->c:Li/h;

    return-void
.end method
