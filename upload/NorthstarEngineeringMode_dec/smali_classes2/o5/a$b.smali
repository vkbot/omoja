.class public final Lo5/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lj5/n$a;

.field public final synthetic b:Lo5/a;


# direct methods
.method public constructor <init>(Lo5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5/a$b;->b:Lo5/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lo5/a$b;->b:Lo5/a;

    iget-object v1, p0, Lo5/a$b;->a:Lj5/n$a;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v9}, Lo5/a;->a(Lj5/n$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;ILjavax/xml/namespace/QName;Li5/c0;Ljava/util/ArrayList;Li5/c0;)V

    return-void
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lo5/a$b;->b:Lo5/a;

    iget-object v1, p0, Lo5/a$b;->a:Lj5/n$a;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    return-void
.end method
