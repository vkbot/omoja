.class public final Lo2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ll2/a;


# instance fields
.field public final synthetic a:Lo2/d;


# direct methods
.method public constructor <init>(Lkotlin/text/c;)V
    .locals 0

    iput-object p1, p0, Lo2/g;->a:Lo2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lo2/g;->a:Lo2/d;

    invoke-interface {p0}, Lo2/d;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
