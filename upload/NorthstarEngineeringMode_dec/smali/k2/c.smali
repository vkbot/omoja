.class public final synthetic Lk2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic x:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/c;->c:Landroid/content/Context;

    iput-object p2, p0, Lk2/c;->r:Ljava/lang/String;

    iput p3, p0, Lk2/c;->x:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk2/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lk2/c;->r:Ljava/lang/String;

    iget p0, p0, Lk2/c;->x:I

    invoke-static {v0, v1, p0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
