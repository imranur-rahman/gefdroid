.class Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;
.super Landroid/os/AsyncTask;
.source "UniversalAndroot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corner23/android/universalandroot/UniversalAndroot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rootTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private bDoInstProcess:Z

.field final synthetic this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;


# direct methods
.method private constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 1

    .prologue
    .line 494
    iput-object p1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->bDoInstProcess:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 26
    .param p1, "params"    # [Ljava/lang/Boolean;

    .prologue
    .line 500
    const/16 v23, 0x0

    aget-object v23, p1, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->bDoInstProcess:Z

    .line 501
    const/16 v20, 0x0

    .line 502
    .local v20, "s_mount_point_data":Ljava/lang/String;
    const/16 v17, 0x0

    .line 503
    .local v17, "s_fs_type_data":Ljava/lang/String;
    const/16 v19, 0x0

    .line 504
    .local v19, "s_mount_arg_data":Ljava/lang/String;
    const/16 v21, 0x0

    .line 505
    .local v21, "s_mount_point_sys":Ljava/lang/String;
    const/16 v18, 0x0

    .line 507
    .local v18, "s_fs_type_sys":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    const-string v24, "/system/bin/mount"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v13

    .line 508
    .local v13, "proc":Ljava/lang/Process;
    if-eqz v13, :cond_0

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->getDataMountPoint(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static/range {v23 .. v24}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$9(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 510
    .local v9, "mp_line":Ljava/lang/String;
    const-string v23, "\\s+"

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 511
    .local v22, "tmp":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v20, v22, v23

    .line 512
    const/16 v23, 0x2

    aget-object v17, v22, v23

    .line 513
    const/16 v23, 0x3

    aget-object v19, v22, v23

    .line 516
    .end local v9    # "mp_line":Ljava/lang/String;
    .end local v22    # "tmp":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    const-string v24, "/system/bin/mount"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v13

    .line 517
    if-eqz v13, :cond_1

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->getSystemMountPoint(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static/range {v23 .. v24}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$10(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 519
    .restart local v9    # "mp_line":Ljava/lang/String;
    const-string v23, "\\s+"

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 520
    .restart local v22    # "tmp":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v21, v22, v23

    .line 521
    const/16 v23, 0x2

    aget-object v18, v22, v23
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v9    # "mp_line":Ljava/lang/String;
    .end local v13    # "proc":Ljava/lang/Process;
    .end local v22    # "tmp":[Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v20, :cond_2

    .line 528
    const-string v20, "/dev/block/mtdblock5"

    .line 531
    :cond_2
    if-nez v21, :cond_3

    .line 532
    const-string v21, "/dev/block/mtdblock3"

    .line 536
    :cond_3
    :try_start_1
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "mount -o remount,rw -t "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " /system"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 537
    .local v16, "remount_sys_rw":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    move-object/from16 v23, v0

    const-string v24, "remount_sys_rw.sh"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/corner23/android/universalandroot/UniversalAndroot;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 538
    .local v8, "fos_sys_rw_script":Ljava/io/FileOutputStream;
    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 539
    .local v12, "osw_sys_rw_script":Ljava/io/OutputStreamWriter;
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->flush()V

    .line 541
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 543
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "mount -o remount,ro -t "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " /system"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 544
    .local v15, "remount_sys_ro":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    move-object/from16 v23, v0

    const-string v24, "remount_sys_ro.sh"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/corner23/android/universalandroot/UniversalAndroot;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 545
    .local v7, "fos_sys_ro_script":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/OutputStreamWriter;

    invoke-direct {v11, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 546
    .local v11, "osw_sys_ro_script":Ljava/io/OutputStreamWriter;
    invoke-virtual {v11, v15}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->flush()V

    .line 548
    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V

    .line 550
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "mount -o remount,"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " -t "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " /data"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 551
    .local v14, "remount_data_ro":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    move-object/from16 v23, v0

    const-string v24, "remount_data.sh"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/corner23/android/universalandroot/UniversalAndroot;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 552
    .local v6, "fos_data_ro_script":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 553
    .local v10, "osw_data_ro_script":Ljava/io/OutputStreamWriter;
    invoke-virtual {v10, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->flush()V

    .line 555
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    .end local v6    # "fos_data_ro_script":Ljava/io/FileOutputStream;
    .end local v7    # "fos_sys_ro_script":Ljava/io/FileOutputStream;
    .end local v8    # "fos_sys_rw_script":Ljava/io/FileOutputStream;
    .end local v10    # "osw_data_ro_script":Ljava/io/OutputStreamWriter;
    .end local v11    # "osw_sys_ro_script":Ljava/io/OutputStreamWriter;
    .end local v12    # "osw_sys_rw_script":Ljava/io/OutputStreamWriter;
    .end local v14    # "remount_data_ro":Ljava/lang/String;
    .end local v15    # "remount_sys_ro":Ljava/lang/String;
    .end local v16    # "remount_sys_rw":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getFilesDir()Ljava/io/File;

    move-result-object v23

    const-string v24, "getroot"

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 561
    .local v3, "Exploit":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 563
    :try_start_2
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "chmod 777 "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v13

    .line 565
    .restart local v13    # "proc":Ljava/lang/Process;
    if-eqz v13, :cond_4

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v24

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->checkProcErrorMsg(Ljava/io/InputStream;)V
    invoke-static/range {v23 .. v24}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$11(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)V

    .line 569
    :cond_4
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 570
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v13

    .line 571
    if-eqz v13, :cond_5

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->checkProcErrorMsg(Ljava/io/InputStream;)V
    invoke-static/range {v23 .. v24}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$11(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v24

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->checkProcErrorMsg(Ljava/io/InputStream;)V
    invoke-static/range {v23 .. v24}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$11(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)V

    .line 575
    :cond_5
    const-wide/16 v23, 0x3e8

    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V

    .line 576
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v23

    .line 583
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v13    # "proc":Ljava/lang/Process;
    :goto_2
    return-object v23

    .line 523
    .end local v3    # "Exploit":Ljava/io/File;
    :catch_0
    move-exception v23

    move-object/from16 v5, v23

    .line 524
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 556
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v23

    move-object/from16 v5, v23

    .line 557
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 577
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "Exploit":Ljava/io/File;
    :catch_2
    move-exception v23

    move-object/from16 v5, v23

    .line 578
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 583
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_3
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    goto :goto_2

    .line 579
    :catch_3
    move-exception v23

    move-object/from16 v5, v23

    .line 580
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 588
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$12(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 590
    .local v1, "state":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 591
    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$12(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 592
    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-static {v3, v5}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$13(Lcom/corner23/android/universalandroot/UniversalAndroot;Z)V

    .line 599
    .end local v1    # "state":I
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->bDoInstProcess:Z

    if-eqz v3, :cond_3

    .line 600
    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 604
    :cond_1
    new-instance v0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;

    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-direct {v0, v3, v6}, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;)V

    .line 605
    .local v0, "itkt":Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;
    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 614
    .end local v0    # "itkt":Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;
    :goto_1
    return-void

    .line 593
    .restart local v1    # "state":I
    :cond_2
    if-ne v1, v4, :cond_0

    .line 594
    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$12(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 595
    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-static {v3, v4}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$13(Lcom/corner23/android/universalandroot/UniversalAndroot;Z)V

    goto :goto_0

    .line 607
    .end local v1    # "state":I
    :cond_3
    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 608
    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 611
    :cond_4
    new-instance v2, Lcom/corner23/android/universalandroot/UniversalAndroot$uninstallToolKitTask;

    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-direct {v2, v3, v6}, Lcom/corner23/android/universalandroot/UniversalAndroot$uninstallToolKitTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$uninstallToolKitTask;)V

    .line 612
    .local v2, "utkt":Lcom/corner23/android/universalandroot/UniversalAndroot$uninstallToolKitTask;
    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/corner23/android/universalandroot/UniversalAndroot$uninstallToolKitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
