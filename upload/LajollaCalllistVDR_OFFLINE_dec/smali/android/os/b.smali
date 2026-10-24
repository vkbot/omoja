.class public final synthetic Landroid/os/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:[Ljava/lang/Object;

.field public final synthetic b:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/b;->a:[Ljava/lang/Object;

    iput-object p2, p0, Landroid/os/b;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Landroid/os/b;->a:[Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/b;->b:[Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Landroid/os/HidlSupport;->a([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method
