### CONFIG VARS ###
set -x GRATER_PATH "/home/max/gits/blitzka"
set -x GRATER_CELERY_LOG "/home/max/tmp/grater-celery.log"

function blitzka.start
    celery.kill
    cd $GRATER_PATH"/grater-django"
    nohup celery -A grater worker -l info >> $GRATER_CELERY_LOG 2>&1 &
    ./manage.py runserver
end

function celery.kill
    for pid in (psgrep celery | awk '{print $2}')
        kill $pid
        echo "[X] Killed Celery worker $pid"
    end
end
