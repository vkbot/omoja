.class public Lcom/android/server/policy/j;
.super Lcom/android/server/wm/WindowManagerShellCommand;
.source ""


# static fields
.field private static final c:Ljava/lang/String; = "MegaWMShellCommand"


# instance fields
.field private final a:Lcom/android/server/policy/MegaPhoneWindowManager;

.field private final b:Lcom/android/server/wm/w;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/policy/MegaPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object p2, p0, Lcom/android/server/policy/j;->a:Lcom/android/server/policy/MegaPhoneWindowManager;

    iget-object p1, p2, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    iput-object p1, p0, Lcom/android/server/policy/j;->b:Lcom/android/server/wm/w;

    return-void
.end method

.method private a(Ljava/io/PrintWriter;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/j;->b:Lcom/android/server/wm/w;

    if-nez p0, :cond_0

    const-string p0, "Error: get null MoveToDisplayService, is your device config_flyingScreenSupported true in config.xml?"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 10

    const-string v0, " to display "

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4f051561

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v2, v3, :cond_3

    const v3, 0x385fabe0

    if-eq v2, v3, :cond_2

    const v3, 0x76998e23

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "exchange"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_1

    :cond_2
    const-string v2, "five-catch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_3
    const-string v2, "flyscreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v7

    :goto_1
    const-string v3, ". Check MoveToDisplayService log!"

    const-string v8, "MegaWMShellCommand"

    const-string v9, "Error: 2 int params required, get wrong number format!"

    if-eqz v2, :cond_a

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->onCommand(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/policy/j;->a:Lcom/android/server/policy/MegaPhoneWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Try five-catch on display"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", check \'MegaPhoneWindowManager\' log if it not works "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    const-string p0, "Error: 1 int params required, get wrong number format!"

    :goto_2
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/policy/j;->a(Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_7

    return v7

    :cond_7
    iget-object p1, p0, Lcom/android/server/policy/j;->b:Lcom/android/server/wm/w;

    instance-of v0, p1, Lcom/android/server/wm/v;

    if-nez v0, :cond_8

    const-string p0, "MegaNexus code error, MoveToDisplayService not found!"

    goto :goto_2

    :cond_8
    check-cast p1, Lcom/android/server/wm/v;

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shell command exchange display top stack display1:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " display2:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/v;->p(II)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, ","

    if-eqz p1, :cond_9

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success: exchange display: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed: exchange display: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_4
    return v6

    :catch_1
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :cond_a
    invoke-direct {p0, v1}, Lcom/android/server/policy/j;->a(Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return v7

    :cond_b
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shell command fly screen from display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/j;->b:Lcom/android/server/wm/w;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/w;->d(II)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object p0, p0, Lcom/android/server/policy/j;->b:Lcom/android/server/wm/w;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/w;->b(II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success: fly screen from display "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed: fly screen from display "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :goto_6
    return v6

    :catch_2
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Mega window commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  flyscreen [fromDisplayId] [toDisplayId]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Move top ActivityStack from first param display to the second one."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  exchange [displayId1] [displayId2]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Exchange top ActivityStack between the two specific-id display ."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  five-catch [displayId]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Directly trigger five-pointer-catch on display if device support."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->onHelp()V

    return-void
.end method
