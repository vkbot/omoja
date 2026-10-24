.class public abstract La4/b$i;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final synthetic r:La4/b;


# direct methods
.method public constructor <init>(La4/b;I)V
    .locals 0

    iput-object p1, p0, La4/b$i;->r:La4/b;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput p2, p0, La4/b$i;->c:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, La4/b$i;->r:La4/b;

    invoke-virtual {p0}, La4/b;->clear()V

    return-void
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, La4/b$i;->r:La4/b;

    iget p0, p0, La4/b;->r:I

    return p0
.end method
