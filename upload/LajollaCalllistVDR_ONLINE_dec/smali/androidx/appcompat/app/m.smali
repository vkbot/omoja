.class public final Landroidx/appcompat/app/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/o;->a()V

    iget-object v0, v0, Landroidx/activity/ComponentActivity;->e:Landroidx/savedstate/d;

    iget-object v0, v0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2}, Landroidx/savedstate/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {v1}, Landroidx/appcompat/app/o;->b()V

    return-void
.end method
