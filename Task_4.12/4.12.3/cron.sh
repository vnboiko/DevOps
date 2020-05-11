#!/bin/bash
*/2 * * * * /home/jamesbond/Desktop/Epam/_4.12/4.12.3/4.12.3.sh >> /home/jamesbond/Desktop/Epam/_4.12/4.12.3/memory_stat.txt
*/2 * * * * free | grep Mem: >> /home/jamesbond/Desktop/Epam/_4.12/4.12.3/memory_stat.txt
*/5 * * * * tar -zcf /home/jamesbond/Desktop/Epam/_4.12/4.12.3/arc.tgz /home/jamesbond/Desktop/Epam/_4.12/4.12.3/memory_stat.txt
