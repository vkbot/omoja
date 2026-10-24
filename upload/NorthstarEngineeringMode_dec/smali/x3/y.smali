.class public final Lx3/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh3/f;

.field public final b:[Ljava/lang/Object;

.field public final c:[Lv3/m1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lv3/m1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lh3/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/y;->a:Lh3/f;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lx3/y;->b:[Ljava/lang/Object;

    new-array p1, p2, [Lv3/m1;

    iput-object p1, p0, Lx3/y;->c:[Lv3/m1;

    return-void
.end method
