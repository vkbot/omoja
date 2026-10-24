.class public final Landroidx/appcompat/app/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/b;


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
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->b()V

    iget-object p0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/savedstate/d;

    iget-object p0, p0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    const-string v1, "androidx:appcompat"

    invoke-virtual {p0, v1}, Landroidx/savedstate/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->d()V

    return-void
.end method
