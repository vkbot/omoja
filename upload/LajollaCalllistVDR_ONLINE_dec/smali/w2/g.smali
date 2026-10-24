.class public final Lw2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lt2/a;


# instance fields
.field public final synthetic b:Lw2/d;


# direct methods
.method public constructor <init>(Lkotlin/text/c;)V
    .locals 0

    iput-object p1, p0, Lw2/g;->b:Lw2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lw2/g;->b:Lw2/d;

    invoke-interface {v0}, Lw2/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
