.class public final synthetic Landroid/os/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/c;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroid/os/c;->a:Ljava/util/Iterator;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->c(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
