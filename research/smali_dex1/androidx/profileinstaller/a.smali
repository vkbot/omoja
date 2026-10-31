.class public final synthetic Landroidx/profileinstaller/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;I)V
    .registers 5

    .line 1
    iput p4, p0, Landroidx/profileinstaller/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/profileinstaller/a;->c:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 4
    .line 5
    iput p2, p0, Landroidx/profileinstaller/a;->d:I

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/profileinstaller/a;->e:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/profileinstaller/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/profileinstaller/a;->d:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/profileinstaller/a;->e:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/profileinstaller/a;->c:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Landroidx/profileinstaller/ProfileInstaller;->b(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iget v0, p0, Landroidx/profileinstaller/a;->d:I

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/profileinstaller/a;->e:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/profileinstaller/a;->c:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 21
    .line 22
    invoke-static {v2, v0, v1}, Landroidx/profileinstaller/ProfileInstaller;->a(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
