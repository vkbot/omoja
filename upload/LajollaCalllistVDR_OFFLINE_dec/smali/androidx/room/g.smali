.class public final Landroidx/room/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/String;

.field public final c:Landroidx/room/f;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroidx/room/f;[I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/g;->c:Landroidx/room/f;

    iput-object p2, p0, Landroidx/room/g;->a:[I

    iput-object p3, p0, Landroidx/room/g;->b:[Ljava/lang/String;

    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/g;->d:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/g;->d:Ljava/util/Set;

    :goto_0
    return-void
.end method
